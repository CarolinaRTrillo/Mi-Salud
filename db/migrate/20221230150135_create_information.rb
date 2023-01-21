class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :name
      t.string :detail
      t.string :source

      t.timestamps
    end
  end
end
