# ArnParse

I needed to parse an AWS ARN with Ruby.  I couldn't find a Ruby gem that provided that funcionality (do the AWS SDK gems?) but I did find this Gist: https://gist.github.com/RulerOf/b9f5dd00a9911aba8271b57d3d269d7a

So I packaged that Gist as a Ruby gem.  Thanks, Andrew!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arn_parse'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arn_parse

## Usage

    $ bundle exec irb
    2.4.0 :001 > require 'arn_parse'
     => true
    2.4.0 :002 > ArnParse::Arn.parse('arn:aws:s3:::serverless-url-screenshot.development.files')
     => #<ArnParse::Arn:0x007fa0d9a701d0 @partition="aws", @service="s3", @region="", @account="", @resource="serverless-url-screenshot.development.files">

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/arn_parse.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
