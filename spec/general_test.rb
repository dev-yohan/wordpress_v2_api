require 'spec_helper'

describe WpApi do
  it 'catch invalid path' do
    response = WpApi::Content::Entity.get_entities('/wp-json/wp/v1/posts')
    expect(response).to be_kind_of(Hash)
  end
  it 'catch invalid entity type' do
    response = WpApi::Content::Entity.get_entities('/wp-json/wp/v1/product')
    expect(response).to be_kind_of(Hash)
  end
end