# MailLogger

``` ruby
Mail::Logger.configure do |config|
  config.processor_class = MailLoggerService # or 'MailLoggerService'
  config.processor_method = :call
end
```

(If you're using Rails, this belongs in `config/initializers/mail_logger.rb`)


In this case we will have:
```
MailLoggerService.new(email_message: email).call
```

## Installation

Add this line to your application's Gemfile:

    gem 'mail-logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mail-logger


> Please note: There's another project around called [**mail_logger**](https://rubygems.org/gems/mail_logger), which records details of mail to the database via ActiveRecord, instead of a log file (which is what this project does). While I certainly didn't intend to infringe, the other project hasn't been updated in a few years, so I'm sticking with this name.

