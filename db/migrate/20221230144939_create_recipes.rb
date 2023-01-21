class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.date :date
      t.string :doctor_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
