# Circleci Auto Bisect

Automatically run rspec bisect off remote circleci builds.

## Table of contents
* [Warning](#warning)
* [Requirements](#requirements)
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Configuration](#configuration)

## Warning

Circleci Auto Bisect is still pre-1.0.0 and there may be occasional breaking
changes to the API. Check the [release notes] for important updates.

[release notes]: https://github.com/TeePublic/circleci-auto-bisect/releases

## Requirements
* ruby 2.5.0 minimum
* [CircleCi API v2](https://circleci.com/docs/api/v2/)
* A [CircleCi Context](https://circleci.com/docs/2.0/contexts/) setup

## Getting Started

### Installation

Include in Gemfile:

```ruby
gem 'circleci-auto-bisect', '~> 0.0.1'
```

### Configuration

For global configuration, automatically generate configuration file by executing:
<br />
`rails generate circleci_auto_bisect:install`

For config object:
```ruby
CircleciAutoBisect.config do |c|
  c.circleci_api_token = ENV['CIRCLECI_API_TOKEN']
end
```
