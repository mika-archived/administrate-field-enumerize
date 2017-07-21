# Administrate::Field::Enumerize
Plugin for adding [Enumerize](https://github.com/brainspec/enumerize) gem support in [Administrate](https://github.com/thoughtbot/administrate).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-enumerize'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install administrate-field-enumerize

## Usage

In your model:

```ruby
class User
  extend Enumerize

  enumerize :sex, in: [:male, :female], scope: true
end
```

and your dashboard:

```ruby
ATTRIBUTE_TYPES = {
  sex: Field::Enumerize
}
```


## Development

Bug reports and pull requests are welcome on GitHub at https://github.com/mika-f/administrate-field-enumerize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Administrate::Field::Enumerize project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/administrate-field-enumerize/blob/master/CODE_OF_CONDUCT.md).
