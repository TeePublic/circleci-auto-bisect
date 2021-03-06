# frozen_string_literal: true

require 'dotenv/load'
require 'simplecov'

SimpleCov.start 'rails' do
  add_filter 'spec/'
  add_filter 'lib/generators/templates/'
end

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each { |f| require f }

ENV['RAILS_ENV'] = 'test'

require_relative '../spec/dummy/config/environment'

ENV['RAILS_ROOT'] ||= "#{File.dirname(__FILE__)}../../../spec/dummy"

RSpec.configure do |config|
  config.include FileManager

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.default_formatter = 'doc' if config.files_to_run.one?
  config.disable_monkey_patching!
  config.order = 'random'
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.warnings = false
  Kernel.srand config.seed
end

include FileManager
