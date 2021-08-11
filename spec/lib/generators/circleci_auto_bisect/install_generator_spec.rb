# frozen_string_literal: true

require 'generators/circleci_auto_bisect/install_generator'

RSpec.describe CircleciAutoBisect::Generators::InstallGenerator do
  before :all do
    remove_config
  end

  after :all do
    remove_config
  end

  it 'install config file properly' do
    described_class.start
    expect(File.file?(config_file)).to be
  end
end
