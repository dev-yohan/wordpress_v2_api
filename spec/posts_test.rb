require 'spec_helper'

describe WpApi do

  it 'retrieve all posts' do
  	WpApi::Content::Post.get_posts
  end	

end