require 'codeclimate-test-reporter'
require 'simplecov'
require 'dotenv'
require_relative '../lib/wp_api'

Dotenv.load
SimpleCov.start
SimpleCov.command_name 'test:units'

config = WpApi::Configuration.new
config.base_uri = ENV['SITE_URL']
config.options  = {
    http_proxyaddr: ENV['PROXY_HOST'],
    http_proxyport: ENV['PROXY_PORT']
}
WpApi.configuration = config