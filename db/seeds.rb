Booking.destroy_all
Meal.destroy_all
User.destroy_all

users_attributes = [
  {
    first_name:   "Angelina",
    last_name:    "Jolie",
    facebook_picture_url: "http://cdn01.cdn.justjared.com/wp-content/uploads/headlines/2017/02/angelina-jolie-lines-up-directing-acting-projects.jpg",
    email:        "angy@gmail.com",
    password:     "secret"
  },
   {
    first_name:   "Ernest",
    last_name:    "Hemingway",
    facebook_picture_url: "https://www.biography.com/.image/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTIwNjA4NjMzODM5NjUwMzE2/ernest-hemingway-9334498-1-402.jpg",
    email:        "ernesto@gmail.com",
    password:     "secret"
  },
   {
    first_name:   "Alfred",
    last_name:    "Hitchcock",
    facebook_picture_url: "https://www.biography.com/.image/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE1ODA0OTcxNjYwNDQ1MTk3/alfred-hitchcock-9340006-1-402.jpg",
    email:        "alfy@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Roger",
    last_name:    "Federer",
    facebook_picture_url: "https://pbs.twimg.com/media/C0RJsFVWEAAT9op.png",
    email:        "roggy@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Pablo",
    last_name:    "Picasso",
    facebook_picture_url: "https://www.biography.com/.image/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE1ODA0OTcxNzU0MDk2MTQx/pablo-picasso-9440021-1-402.jpg",
    email:        "pablou@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Margaret",
    last_name:    "Thatcher",
    facebook_picture_url: "http://www.historytoday.com/sites/default/files/styles/cartoon_sidebar_300/public/taxonomies/Thatcher.jpg?itok=WfBBfXBv",
    email:        "maggy@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Salma",
    last_name:    "Hayek",
    facebook_picture_url: "http://cdn.miramax.com/media/_versions/salma_hayek_19_square_md.jpg",
    email:        "yaya@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Yoko",
    last_name:    "Ono",
    facebook_picture_url: "http://media2.fdncms.com/atlanta/imager/yoko-ono-talks-about-the-life-and-art-of-j/u/original/2409777/1290621503-yoko_byrne02sm_2_.jpg",
    email:        "yoko@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Silvio",
    last_name:    "Berlusconi",
    facebook_picture_url: "https://www.biography.com/.image/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE4MDAzNDEwNDUzNDk3MzU4/silvio-berlusconi-9209602-1-402.jpg",
    email:        "silvio49@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Vlad",
    last_name:    "Putin",
    facebook_picture_url: "http://static.dnaindia.com/sites/default/files/styles/square/public/2015/06/23/349000-putin.jpg",
    email:        "vlady@gmail.com",
    password:     "secret"
  }
]

users_attributes.each { |params| User.create!(params) }

meals_attributes = [
  {
    name:        "Kawaï 寿司",
    description: "Sushi selection, vegetarian various types of fish and seafood, sushi prepared in front of you and your guests.",
    price:       54,
    food_type:   "Japanese",
    user:        User.where(last_name: "Ono").first,
    photo_url:   "https://unasalahat.files.wordpress.com/2012/11/281062_189138614556471_1329025318_o.jpg"
  },
  {
    name:        "Mama Mia",
    description: "Bruschetta with fresh diced tomatoes, garlic, oregano, basil and mozzarella. Selection of Italian cheeses; Italian salami. Fillet of beef with tasty cream mushroom. Tiramisù.",
    price:       40,
    food_type:   "Italian",
    user:        User.where(last_name: "Berlusconi").first,
    photo_url:   "http://www.italia.it/fileadmin/src/img/cluster_gallery/mangiare_bere/la_pizza/_0004_pizza_focaccia.jpg"
  },
  {
    name:        "Cocori..couiic",
    description: "Pumpkin Velouté, dark rye croutons & spiced crispy kale. Roast Quail, crisp leg, soft poached egg, fig jam. oast Partridge, quince, red currant & celeriac. Caramel apple, walnut, cinnamon.",
    price:       59,
    food_type:   "French",
    user:        User.where(last_name: "Picasso").first,
    photo_url:   "http://i.huffpost.com/gadgets/slideshows/334991/slide_334991_3367253_free.jpg"
  },
  {
    name:        "Mezzeh Habibi المزة",
    description: "Chicken kofta served with bulgur wheat,kale, sunflower seeds, pumpkin seeds, fresh herbs ,tender stem broccoli and pomegranate seeds with mint cucumber dill natural joghurt dip.",
    price:       35,
    food_type:   "Lebanese",
    user:        User.where(last_name: "Hayek").first,
    photo_url:   "http://www.sbs.com.au/food/sites/sbs.com.au.food/files/20130636_114_Arabic-Chicken-and-rice,-layered-rice,-meat,-chicken,-almonds.jpg"
  },
  {
    name:        "Good Evening England",
    description: "Traditional full English latefast with traditionally back bacon, fried, poached or scrambled eggs, fried or grilled tomatoes, fried mushrooms, fried bread or toast with butter, and sausages. Black pudding, baked beans, bubble and squeak and hash browns are often also included. Fried or grilled oatcakes sometimes replace fried bread. The food is traditionally served with a mug of tea; coffee is an alternative.",
    price:       25,
    food_type:   "Lebanese",
    user:        User.where(last_name: "Thatcher").first,
    photo_url:   "http://www.anecocatering.co.uk/wp-content/uploads/2015/06/breakfast-pan.jpg"
  },
  {
    name:        "Light Bites",
    description: "Salmon carpaccio and sweet corn pan cake. Vegetables brunoise, roasted king prawns and fresh pasta. Roasted apricots and almonds ice cream.",
    price:       79,
    food_type:   "Paleo",
    user:        User.where(last_name: "Jolie").first,
    photo_url:   "http://www.tablecrafter.com/uploads/ckeditor/pictures/418/content_xclass_master_class_speedlight_demo2_1.jpg"
  },
  {
    name:        "Russian Winter",
    description: "Traditional beef stew served with pasta. Choice of home made dumplings (pierogi) served with fried bacon and onions. Choice of meat, cheese or cabbage and mushrooms. Beef roulade stuffed with gherkin, red peppers served with creamy mash and braised red cabbage. Karpatka (pastry and custard cream cake).",
    price:       50,
    food_type:   "Russian",
    user:        User.where(last_name: "Putin").first,
    photo_url:   "https://static01.nyt.com/images/2017/02/06/dining/06COOKING-GOULASH2/06COOKING-GOULASH2-videoSixteenByNineJumbo1600.jpg"
  },
  {
    name:        "The Birds",
    description: "Traditional beef stew served with pasta. Choice of home made dumplings (pierogi) served with fried bacon and onions. Choice of meat, cheese or cabbage and mushrooms. Beef roulade stuffed with gherkin, red peppers served with creamy mash and braised red cabbage. Karpatka (pastry and custard cream cake).",
    price:       50,
    food_type:   "American",
    user:        User.where(last_name: "Hitchcock").first,
    photo_url:   "https://static1.squarespace.com/static/5220aad8e4b079c14a333578/56cf8f5bf699bb26fa0deeeb/56cf96a6b654f9decd164c73/1456445300874/Loiseau+les+Ducs+dish.jpg"
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
  }
]

bookings_attributes.each { |params| Booking.create!(params) }

puts "Seed OKAYYY"
