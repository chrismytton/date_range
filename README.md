# DateRange

Ruby port of [Perl's Date::Range](http://search.cpan.org/~tmtm/Date-Range-1.41/lib/Date/Range.pm#overlaps_/_overlap) which makes it easy to work with a range of dates.

This is faster than working with Ruby's built in support for using `Date`s with `Range`s because it just compares the start and end dates rather than converting the whole range to an enumerable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date-range', require: 'date_range'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date-range

## Usage

```ruby
require 'date_range'

range = DateRange.new(date1, date2);

if range.include?(date3)
  # ...
end

if range.include?(range2)
  # ...
end

if range.overlaps(range2)
  range3 = range.overlap(range2)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chrismytton/date_range.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
