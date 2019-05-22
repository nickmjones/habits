class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.text :title
      t.text :frequency
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
