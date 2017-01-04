require 'codeclimate-test-reporter'
require 'simplecov'
require_relative '../lib/wp_api'

SimpleCov.start

ENV['HTTP_PROXY'] = 'http://10.28.2.251:3128'
config = WpApi::Configuration.new
config.base_uri = 'http://live-asuntos-de-mujeres.pantheonsite.io'
config.options  = {
    http_proxyaddr: '10.28.2.251',
    http_proxyport: 3128
}
WpApi.configuration = config