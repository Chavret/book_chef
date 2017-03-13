class Meal < ApplicationRecord
  FOOD_TYPE= [
    "French",
    "Italian",
    "German",
    "Japanese",
    "Asian",
    "Thai",
    "Vietnamese",
    "American",
    "Chinese",
    "British",
    "Indian",
    "Mexican",
    "Russian",
    "Korean",
    "African",
    "Creole",
    "Cambogian",
    "Lebanese",
    "South-American",
    "Bulgarian",
    "Spanish",
    "Scandinavian",
    "Middle eastern",
    "Organic",
    "Halal",
    "Kosher",
    "Gluten-Free",
    "Lactose-free",
    "Vegetarian",
    "Vegan",
    "Paleo",
    "Pescaterian",
    "Fish",
    "Meat"
  ]

  belongs_to :user
  has_many :bookings
  has_attachment :photo
  validates :price, presence: true
  validates :name, presence:  true
  validates :description, presence: true
  validates :food_type, presence: true, inclusion: { in: FOOD_TYPE }
  validates :user_id, presence: true
end

