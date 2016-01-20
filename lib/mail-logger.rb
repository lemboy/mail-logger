require 'mail'
require 'logger'
require 'mail/logger/version'
require 'mail/logger/configuration'
require 'mail/logger/log'
require 'mail/logger/callback'

module Mail::Logger
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  def self.logger
    @logger ||= Mail::Logger::Log.new
  end
end
