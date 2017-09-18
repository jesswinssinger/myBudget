class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.date :date
      t.string :source
      t.string :item
      t.float :amount
      t.boolean :recurring
      t.text :notes

      t.timestamps
    end
  end
end
