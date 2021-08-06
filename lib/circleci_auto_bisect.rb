# frozen_string_literal: true

module CircleciAutoBisect
  class << self
    attr_accessor :api_token, :context_id

    def config
      yield self
    end
  end
end
