class Meal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :description, presence: true
  validates :food_type, presence: true
  validates :user_id, presence: true
end

