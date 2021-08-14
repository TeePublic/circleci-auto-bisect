# Circleci Auto Bisect

Automatically run rspec bisect off remote circleci builds.

## Table of contents
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Configuration](#configuration)

## Getting Started

### Installation

Include in Gemfile:

```ruby
gem 'circleci-auto-bisect', '~> 0.0.1'
```

### Configuration

For global configuration, automatically generate configuration file by executing:
`rails generate circleci_auto_bisect:install`

For config object:
```ruby
CircleciAutoBisect.config do |c|
  c.circleci_api_token = ENV['CIRCLECI_API_TOKEN']
end
```
