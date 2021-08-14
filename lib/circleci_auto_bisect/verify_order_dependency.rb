# frozen_string_literal: true

module CircleciAutoBisect
  class VerifyOrderDependency

    def initialize(seed, jobs, context_id,  workflow_id)
      @seed = seed
      @jobs = jobs
      @context_id = context_id
      @workflow_id = workflow_id
    end

    def start
      update_seed
      rerun_workflow
    end

    private

    def update_seed
      auth_conn.put(context_url) do |req|
        req.body = { value: "--seed #{@seed}" }.to_json
      end
    end

    def rerun_workflow
      resp = auth_conn.post(workflow_url) do |req|
        req.body = {
          jobs: @jobs,
          from_failed: false,
          sparse_tee: false
        }.to_json
      end
    end

    def context_url
      "/api/v2/context/#{@context_id}/environment-variable/RSPEC_SEED_ARG"
    end

    def workflow_url
      "/api/v2/workflow/#{@workflow_id}/rerun"
    end

    def auth_conn
      conn = Faraday.new(
        url: 'https://circleci.com',
        headers: { 'Content-Type' => 'application/json' }
      )
      conn.basic_auth(CircleciAutoBisect.circleci_api_token, '')
      conn.headers['Authorization']
      conn
    end
  end
end
