class AddCompletedAtToShoppingItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_items, :completed_at, :datetime
  end
end
