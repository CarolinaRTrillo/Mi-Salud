class Exam < ApplicationRecord
  belongs_to :user
  validates :date, :name, :place, presence: true
  has_one_attached :photo
end
