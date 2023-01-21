class Report < ApplicationRecord
  belongs_to :user
  validates :title, :date, :category, presence: true
  has_one_attached :photo
end
