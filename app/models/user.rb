class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # estas son las asociaciones
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :reports, dependent: :destroy
  has_many :exams, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :habits, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
