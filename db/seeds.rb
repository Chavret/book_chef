# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
users_attributes = [
  {
    email:        "yoko@gmail.com",
    password:     "secret"
  },
   {
    email:        "marcello@gmail.com",
    password:     "secret"
  },
   {
    email:        "robert@gmail.com",
    password:     "secret"
  },
  {
    email:        "emile@gmail.com",
    password:     "secret"
  },
  {
    email:        "boris@gmail.com",
    password:     "secret"
  },
  {
    email:        "romain@gmail.com",
    password:     "secret"
  },
]

users_attributes.each { |params| User.create!(params) }

Meal.destroy_all
meals_attributes = [
  {
    name:        "Kawai",
    description: "Sushi selection, vegetarian various types of fish and seafood, sushi prepared in front of you and your guests.",
    price:       "54",
    food_type:   "Japanese",
    user_id:     User.all.sample.id
  },
  {
    name:        "Mama Mia",
    description: "Bruschetta with fresh diced tomatoes, garlic, oregano, basil and mozzarella. Selection of Italian cheeses; Italian salami. Fillet of beef with tasty cream mushroom. Tiramisù",
    price:       "40",
    food_type:   "Italian",
    user_id:     User.all.sample.id
  },
  {
    name:        "Sweet Sauterne",
    description: "Sushi selection, vegetarian various types of fish and seafood, sushi prepared in front of you and your guests.",
    price:       "54",
    food_type:   "French",
    user_id:     User.all.sample.id
  },
  {
    name:        "Mezzeh delight",
    description: "Chicken kofta served with bulgur wheat,kale, sunflower seeds, pumpkin seeds, fresh herbs ,tender stem broccoli and pomegranate seeds with mint cucumber dill natural joghurt dip.",
    price:       "35",
    food_type:   "Lebanese",
    user_id:     User.all.sample.id
  },
]

meals_attributes.each { |params| Meal.create!(params) }

Booking.destroy_all
bookings_attributes = [
  {
    date:             "20/03/2017",
    number_customers: 6,
    meal_id:          Meal.all.sample.id,
    user_id:          User.all.sample.id
  },
  {
    date:             "21/03/2017",
    number_customers: 6,
    meal_id:          Meal.all.sample.id,
    user_id:          User.all.sample.id
  },
  {
    date:             "22/03/2017",
    number_customers: 6,
    meal_id:          Meal.all.sample.id,
    user_id:          User.all.sample.id
  },
  {
    date:             "23/03/2017",
    number_customers: 6,
    meal_id:          Meal.all.sample.id,
    user_id:          User.all.sample.id
  },
]

bookings_attributes.each { |params| Booking.create!(params) }

puts "Seed OKAYYY"
