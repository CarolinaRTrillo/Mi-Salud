class Booking < ApplicationRecord
  belongs_to :user
  validates :start_time, :name, presence: true

end
