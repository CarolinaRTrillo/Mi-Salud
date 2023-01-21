class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string :habit_type
      t.string :quantity
      t.string :frequency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
