Gem::Specification.new do |s|
  s.name = 'circleci-auto-bisect'
  s.version = '0.0.1'
  s.summary = 'Automatically run rspec bisect off remove circleci builds'
  s.license = 'MIT'
  s.authors = ['Efren Aguirre']
  s.files = [
    'LICENSE',
    'README.md',
    'CHANGELOG.md',
    'Gemfile',
    'Rakefile',
    'lib/circleci_auto_bisect.rb',
    'circleci-auto-bisect.gemspec'
  ]

  s.add_development_dependency 'codecov', '~> 0.5.2'
  s.add_development_dependency 'dotenv', '~> 2.7.6'
  s.add_development_dependency 'rake', '~> 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.10.0'
  s.add_development_dependency 'rubocop', '~> 1.18.3'
  s.add_development_dependency 'rubocop-performance', '1.11.4'
  s.add_development_dependency 'rubocop-rspec', '2.4.0'
  s.add_development_dependency 'simplecov', '~> 0.21.2'
end
