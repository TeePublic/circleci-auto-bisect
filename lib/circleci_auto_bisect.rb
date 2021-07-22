module CircleciAutoBisect
  class << self
    attr_accessor :api_token

    def config
      yield self
    end
  end
end
