class AddCompletedAtToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :completed_at, :datetime
  end
end
