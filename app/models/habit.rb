class Habit < ApplicationRecord
  belongs_to :user
  validates :habit_type, :quantity, :frequency, presence: true
  validates :habit_type, uniqueness: { scope: :user_id,
    message: "Ya existe este habito" }
end
