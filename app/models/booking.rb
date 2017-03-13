class Booking < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :date, presence: true, null: false
  validates :number_customers, presence: true, null: false
  validates :meal_id, presence: true
  validates :user_id, presence: true

end
