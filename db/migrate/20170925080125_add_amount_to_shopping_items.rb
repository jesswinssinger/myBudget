class AddAmountToShoppingItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_items, :amount, :float
  end
end
