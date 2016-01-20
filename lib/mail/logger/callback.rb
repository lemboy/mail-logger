class Mail::Logger::Callback
  def self.delivered_email(email)
    Mail::Logger.logger.call(email)
  end
end

require 'mail'
ActionMailer::Base.register_observer(Mail::Logger::Callback)
