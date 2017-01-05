require 'spec_helper'

describe WpApi do
  it 'retrieve all categories' do
    WpApi::Content::Entity.get_entities('/wp-json/wp/v2/categories')
  end
end