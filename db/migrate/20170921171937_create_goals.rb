class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.text :goal
      t.integer :amount
      t.integer :balance
      t.text :notes

      t.timestamps
    end
  end
end
