# ArnParse

AWS ARNs can be parsed with [Aws::ARNParser](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/ARNParser.html). You can use this gem if you don't want to bring in the entire AWS SDK. 

This code packages [this gist](https://gist.github.com/RulerOf/b9f5dd00a9911aba8271b57d3d269d7a) as a gem. Thanks, Andrew!

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
