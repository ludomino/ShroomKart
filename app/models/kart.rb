class Kart < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  validates :name, presence: true
  validates :name, uniqueness: true
end
