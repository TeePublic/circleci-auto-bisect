# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'circleci-auto-bisect'
  s.version = '0.0.1'
  s.summary = 'Automatically run rspec bisect off remote circleci builds'
  s.license = 'MIT'
  s.authors = ['Efren Aguirre']
  s.files = Dir[
    'LICENSE',
    'README.md',
    'CHANGELOG.md',
    'Gemfile',
    'Rakefile',
    'lib/**/*.rb',
    'circleci-auto-bisect.gemspec'
  ]
  s.test_files = Dir['spec/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.5.0'

  s.add_development_dependency 'codecov', '~> 0.5.2'
  s.add_development_dependency 'dotenv', '~> 2.7.6'
  s.add_development_dependency 'rails', '~> 6.0.3'
  s.add_development_dependency 'rake', '~> 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.10.0'
  s.add_development_dependency 'rubocop', '~> 1.18.3'
  s.add_development_dependency 'rubocop-performance', '1.11.4'
  s.add_development_dependency 'rubocop-rspec', '2.4.0'
  s.add_development_dependency 'simplecov', '~> 0.21.2'
end
