class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :name, :string
    add_column :users, :weight, :float
    add_column :users, :height, :float
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :integer
    add_column :users, :phone_number, :string
    add_column :users, :blood_group, :integer
    add_column :users, :blood_type, :integer
  end
end
