require 'spec_helper'

describe WpApi do
  it 'retrieve all posts' do
    response = WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts')
    expect(response).to be_kind_of(Array)
  end

  it 'retrieve post paginated' do
    response = WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts', {
        query: {
            page: 1,
            per_page: 2
        }
    })
    expect(response).to be_kind_of(Array)
  end
end