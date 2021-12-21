require 'rails_helper'

RSpec.describe Item, type: :model do

  it 'has a name' do
    item = Item.new(name: "")
    expect(item).to_not be_valid

    item.name = "Name"
    expect(item).to be_valid
  end
end
