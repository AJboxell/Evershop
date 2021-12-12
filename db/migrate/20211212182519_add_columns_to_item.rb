class AddColumnsToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :name, :string
    add_column :items, :quantity, :string
  end
end
