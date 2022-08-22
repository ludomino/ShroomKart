class Booking < ApplicationRecord
  belongs_to :kart
  belongs_to :user
end
