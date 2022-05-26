class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: %w(Pending Accepted Canceled) }

  scope :bookings_start_date, ->(new_start_date) { where("start_date <= ?", new_start_date) }
  scope :bookings_end_date, ->(end_start_date) { where("end_date >= ?", end_start_date) }
end
