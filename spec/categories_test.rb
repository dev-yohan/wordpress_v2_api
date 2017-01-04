require 'spec_helper'

describe WpApi do

  it 'retrieve all categories' do
    WpApi::Content::Category.get_categories
  end

end