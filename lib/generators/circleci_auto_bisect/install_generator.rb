# frozen_string_literal: true

require 'rails/generators'

module CircleciAutoBisect
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path( '../templates', __dir__)

      desc 'Creates a Circleci Auto Bisect config file.'

      def copy_config
        template(
          'circleci_auto_bisect_config.rb',
          "#{Rails.root}/config/circleci_auto_bisect.rb"
        )
      end
    end
  end
end
