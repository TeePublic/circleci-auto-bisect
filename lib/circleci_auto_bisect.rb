# frozen_string_literal: true

module CircleciAutoBisect
  class << self
    attr_accessor :circleci_api_token, :circleci_context_id

    def config
      yield self
    end
  end
end
