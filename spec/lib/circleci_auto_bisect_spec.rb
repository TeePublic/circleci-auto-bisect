# frozen_string_literal: true

require_relative '../../lib/circleci_auto_bisect'

RSpec.describe CircleciAutoBisect do
  it 'is possible to provide config options' do
    described_class.config do |c|
      expect(c).to eq(described_class)
    end
  end

  describe 'parameters' do
    let(:fake_class) { class_double('CircleciAutoBisect') }

    it 'is possible to set api token' do
      expect(fake_class).to receive(:circleci_api_token=).with('123')
      fake_class.circleci_api_token = '123'
    end

    it 'is possible to set context id' do
      expect(fake_class).to receive(:circleci_context_id=).with('123')
      fake_class.circleci_context_id = '123'
    end
  end
end
