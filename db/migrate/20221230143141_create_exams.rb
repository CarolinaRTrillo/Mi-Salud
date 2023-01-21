class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.date :date
      t.string :name
      t.string :place
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
