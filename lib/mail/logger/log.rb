class Mail::Logger::Log
  def call(email)
    processor_class.new(email_message: email).send(processor_method)
  end

  def processor_class
    Mail::Logger.configuration.processor_class.to_s.constantize
  end

  def processor_method
    Mail::Logger.configuration.processor_method
  end
end
