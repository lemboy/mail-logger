# MailLogger


## Installation

Add this line to your application's Gemfile:

    gem 'mail-logger', github: 'lemboy/mail-logger'

And then execute:

    $ bundle

Create `config/initializers/mail_logger.rb`:
``` ruby
Mail::Logger.configure do |config|
  config.processor_class = MailLoggerService # or 'MailLoggerService'
  config.processor_method = :call
end
```

In this case we will have:
```
MailLoggerService.new(email_message: email).call
```

