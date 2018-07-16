# WordWrapLimiter

A gem to wrap a string onto multiple lines based upon a set column width.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'word_wrap_limiter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_wrap_limiter

## Usage

Example usage in ruby file called from the terminal:

require 'word_wrap_limiter'

p 'Enter a string'
input = gets

p 'Enter a column width'
column_width = gets

result = WordWrapLimiter.wrap(input, column_width.to_i)
puts result

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ccp92/word_wrap_limiter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
