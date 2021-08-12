# frozen_string_literal: true

require 'faraday'
require 'json'

require_relative './circleci_auto_bisect/verify_order_dependency'

module CircleciAutoBisect
  class << self
    attr_accessor :circleci_api_token

    def config
      yield self
    end
  end
end
