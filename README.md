# Fried::Service

Service object interface with opinionated utilities bundled.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fried-service'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fried-service

## Usage

```ruby
class YourService
  include ::Fried::Service::OnNew
end
```

This will include for you `Fried::Call::OnNew`, `Fried::Dependency::Schema`
and define a `call` method for you which just raises `NotImplementedError`.
There is also `Fried::Service::OnBuild` which behaves the same way but includes
`Fried::Call::OnBuild` instead.

Please check documentation of
[fried-dependency](https://github.com/Fire-Dragon-DoL/fried-dependency) and
[fried-call](https://github.com/Fire-Dragon-DoL/fried-call) to understand what
utilities are brought in.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Fire-Dragon-DoL/fried-service.
