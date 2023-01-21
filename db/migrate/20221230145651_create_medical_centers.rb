class CreateMedicalCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
