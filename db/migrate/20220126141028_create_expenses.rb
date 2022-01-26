class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.float :amount
      t.string :name
      t.string :person

      t.timestamps
    end
  end
end
