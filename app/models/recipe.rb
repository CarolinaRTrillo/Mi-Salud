class Recipe < ApplicationRecord
  # siempre hacer asociaciones y validaciones antes del seed
  belongs_to :user
  validates :date, :doctor_name, presence: true
  has_one_attached :photo
end
