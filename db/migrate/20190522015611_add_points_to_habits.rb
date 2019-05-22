class AddPointsToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :points, :integer
    add_index :habits, :points
  end
end
