# frozen_string_literal: true

require 'circleci_auto_bisect'

CircleciAutoBisect.config do |c|
  # These are mandatory options that you must set before running rake tasks:
  # c.api_token = ENV['API_TOKEN']
  # c.context_id = ENV['CONTEXT_ID']
end
