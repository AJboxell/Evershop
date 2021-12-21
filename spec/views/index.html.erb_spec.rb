require 'rails_helper'

RSpec.describe 'items/index', type: :view do

  before(:each) do
    assign(:items, [
            Item.create!(name: "Something"),
            Item.create!(name: "Something")
          ])
  end

  it 'displays a list of items' do
    render
    assert_select 'li', text: 'Something'.to_s, count: 2
  end
end
