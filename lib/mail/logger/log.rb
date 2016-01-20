class Mail::Logger::Log
  attr_reader :processor_class, :processor_method

  def initialize
    @processor_class = Mail::Logger.configuration.processor_class
    @processor_method = Mail::Logger.configuration.processor_method
  end

  def call(email)
    processor_class.new(email_message: email).send(processor_method)
  end
end
