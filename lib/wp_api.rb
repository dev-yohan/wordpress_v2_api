require 'wp_api/configuration'
require 'wp_api/content/post'
require 'wp_api/content/page'
require 'wp_api/content/media'
require 'wp_api/content/post_type'
require 'wp_api/content/comment'
require 'wp_api/content/taxonomy'
require 'wp_api/content/category'
require 'wp_api/content/tag'
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