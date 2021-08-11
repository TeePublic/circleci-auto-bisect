# frozen_string_literal: true

require 'circleci_auto_bisect'

CircleciAutoBisect.config do |c|
  # These are mandatory options that you must set before running rake tasks:
  # c.circleci_api_token = ENV['CIRCLECI_API_TOKEN']
  # c.circleci_context_id = ENV['CIRCLECI_CONTEXT_ID']
end
