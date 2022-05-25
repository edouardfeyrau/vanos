class Van < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true, uniqueness: { scope: :description }
  validates :description, presence: true
  validates :seats, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true
end
