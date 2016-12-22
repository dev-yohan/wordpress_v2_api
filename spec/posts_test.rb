require 'spec_helper'

describe WpApi do

  before do 
  	ENV['HTTP_PROXY'] = 'http://proxy.crop.globant.com:3128'
	config = WpApi::Configuration.new
	config.base_uri = 'live-asuntos-de-mujeres.pantheonsite.io'
	config.options  = {
	  	http_proxyaddr: 'proxy.crop.globant.com',
	  	http_proxyport: 3128
	}
	WpApi.configuration = config
  end	
	
  it 'retrieve all posts' do
  	WpApi::Content::Post.get_posts
  end	

end