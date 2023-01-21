class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
