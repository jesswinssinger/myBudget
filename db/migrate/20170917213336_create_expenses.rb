class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :category
      t.string :item
      t.string :store
      t.float :amount
      t.boolean :recurring
      t.text :notes

      t.timestamps
    end
  end
end
