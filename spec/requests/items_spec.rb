require 'rails_helper'

RSpec.describe '/items', type: :request do

  let(:valid_attributes) do
    {
      'name' => 'Something'
    }
  end

  let(:invalid_attributes) do
    {
      'name' => ''
    }
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Item' do
        expect do
          post items_url, params: { item: valid_attributes }
        end.to change(Item, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Item' do
        expect do
          post items_url, params: { item: invalid_attributes }
        end.to change(Item, :count).by(0)
      end
    end
  end
end
