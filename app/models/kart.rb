class Kart < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :name, uniqueness: true
end
