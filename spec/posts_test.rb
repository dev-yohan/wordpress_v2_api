require 'spec_helper'

describe WpApi do

  it 'retrieve all posts' do
    WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts')
  end	

end