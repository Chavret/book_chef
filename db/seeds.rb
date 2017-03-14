Booking.destroy_all
Meal.destroy_all
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

meals_attributes = [
  {
    name:        "Kawaï 寿司",
    description: "Sushi selection, vegetarian various types of fish and seafood, sushi prepared in front of you and your guests.",
    price:       "54",
    food_type:   "Japanese",
    user_id:     User.all.sample.id,
    photo_url: "https://unasalahat.files.wordpress.com/2012/11/281062_189138614556471_1329025318_o.jpg"
  },
  {
    name:        "Mama Mia",
    description: "Bruschetta with fresh diced tomatoes, garlic, oregano, basil and mozzarella. Selection of Italian cheeses; Italian salami. Fillet of beef with tasty cream mushroom. Tiramisù",
    price:       "40",
    food_type:   "Italian",
    user_id:     User.all.sample.id,
    photo_url:   "http://www.italia.it/fileadmin/src/img/cluster_gallery/mangiare_bere/la_pizza/_0004_pizza_focaccia.jpg"
  },
  {
    name:        "Sweet Sauterne",
    description: "Sushi selection, vegetarian various types of fish and seafood, sushi prepared in front of you and your guests.",
    price:       "54",
    food_type:   "French",
    user_id:     User.all.sample.id,
    photo_url:   "http://i.huffpost.com/gadgets/slideshows/334991/slide_334991_3367253_free.jpg"
  },
  {
    name:        "Mezzeh Delight المزة",
    description: "Chicken kofta served with bulgur wheat,kale, sunflower seeds, pumpkin seeds, fresh herbs ,tender stem broccoli and pomegranate seeds with mint cucumber dill natural joghurt dip.",
    price:       "35",
    food_type:   "Lebanese",
    user_id:     User.all.sample.id,
    photo_url: "http://www.sbs.com.au/food/sites/sbs.com.au.food/files/20130636_114_Arabic-Chicken-and-rice,-layered-rice,-meat,-chicken,-almonds.jpg"
  },
]

meals_attributes.each { |params| Meal.create!(params) }

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
