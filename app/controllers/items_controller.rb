class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  def destroy
    find_item
    @item.destroy
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :quantity)
  end
end
