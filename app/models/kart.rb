class Kart < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :name, uniqueness: true

  include PgSearch::Model
    pg_search_scope :global_search,
      against: [ :name ],
      associated_against: {
        user: [ :name ]
      },
      using: {
        tsearch: { prefix: true }
    }
end
