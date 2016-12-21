require 'wp_api/configuration'
require 'wp_api/content/post'
module WpApi
  class << self
    attr_accessor :configuration
  end
 
  def self.configuration
    @configuration ||= Configuration.new
  end 

  def self.reset 
    @configuration = Configuration.new
  end  

  def self.configure
    yield(configuration)
  end  

  def self.test_config
    puts configuration.base_uri
  end  
end	