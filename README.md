# MailDropr

This library is a ruby wrapper for the [MailDropr](http://maildropr.com) API.

## Installation

Add this line to your application's Gemfile:

    gem 'maildropr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install maildropr

## Usage

### Configuration

```ruby
@maildropr = MailDropr(:api_key => "YOUR_MAILDROPR_API_KEY")
```

### Add a subscriber

```ruby
@list = "523b1c91986c3463e6000023"
@maildropr.add_subscriber(@list, "john.smith@example.com")
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Add specs for your changes (so I don't accidentally break them in future releases)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
