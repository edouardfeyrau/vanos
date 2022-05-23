class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true, uniqueness: { scope: :description }
  validates :description, presence: true
  validates :seats, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true
end
