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
    email:        "glorian.geoffrey@gmail.com",
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
  },
   {
    first_name:   "Barack",
    last_name:    "Obama",
    facebook_picture_url: "https://ae01.alicdn.com/kf/HTB1F.0bPpXXXXaBXpXXq6xXFXXX8/Vintage-Square-Sunglasses-Men-Women-Oliver-Peoples-OV5316SU-President-font-b-Obama-b-font-Sun-Glasses.jpg",
    email:        "barack@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Brigitte",
    last_name:    "Bardot",
    facebook_picture_url: "https://ichef.bbci.co.uk/images/ic/256x256/p01bqvpc.jpg",
    email:        "bb@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Serge",
    last_name:    "Gainsbarre",
    facebook_picture_url: "http://theudericus.free.fr/Reggae/Reggae_Singers/Serge_Gainsbourg_Couleurs.jpg",
    email:        "gainsbarre@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Jean-Paul",
    last_name:    "Gaultier",
    facebook_picture_url: "https://www.biography.com/.image/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE1ODA0OTcxNjQxODMyOTcz/jean-paul-gaultier-9307775-1-402.jpg",
    email:        "jp@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Vanessa",
    last_name:    "Paradis",
    facebook_picture_url: "https://www.cadenceinfo.com/images/vanessa-paradis-biographie-portrait.jpg",
    email:        "vanes@gmail.com",
    password:     "secret"
  },
  {
    first_name:   "Charles",
    last_name:    "Baudelaire",
    facebook_picture_url: "https://www.poets.org/sites/default/files/styles/286x289/public/images/biographies/607_cbaudelaire2.gif?itok=8Aj5IJKU",
    email:        "charly@gmail.com",
    password:     "secret"
  }
]

users_attributes.each { |params| User.create!(params) }

meals_attributes = [
  {
    name:        "Meet My Meat",
    description: "lot of meat",
    price:       90,
    food_type:   "American",
    user:        User.where(last_name: "Hemingway").first,
    photo_url:   "http://athome.kimvallee.com/wp-content/uploads/2012/10/familystyle.jpg"
  },
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
    name:        "Je suis Rital et je le reste",
    description: "Pizza",
    price:       50,
    food_type:   "Italian",
    user:        User.where(last_name: "Berlusconi").first,
    photo_url:   "http://foodportfolio.com/wordpress/wp-content/pittsburgh-food-photographer/food-photography-test-shoot-1.jpg"
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
    food_type:   "British",
    user:        User.where(last_name: "Thatcher").first,
    photo_url:   "http://www.anecocatering.co.uk/wp-content/uploads/2015/06/breakfast-pan.jpg"
  },
  {
    name:        "Light Bites",
    description: "Salmon carpaccio and sweet corn pan cake. Vegetables brunoise, roasted king prawns and fresh pasta. Roasted apricots and almonds ice cream.",
    price:       79,
    food_type:   "American",
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
  {
    name:        "Even Lighter Bites",
    description: "Almost nothing to eat. I will watch out your weight !",
    price:       50,
    food_type:   "American",
    user:        User.where(last_name: "Jolie").first,
    photo_url:   "http://terrymcdonagh.com/wp-content/gallery/irish-food-photography/Fruit-salad-1.jpg"
  },
  {
    name:        "Roasted Trump",
    description: "Huge ",
    price:       50,
    food_type:   "American",
    user:        User.where(last_name: "Obama").first,
    photo_url:   "http://www.thephoblographer.com/wp-content/uploads/2014/11/Lou-Manna_Turkey.jpg"
  },
  {
    name:        "Kids'mania",
    description: "Sweet sweet and only sweets",
    price:       20,
    food_type:   "American",
    user:        User.where(last_name: "Jolie").first,
    photo_url:   "http://taphotos.com/wp-content/uploads/2015/06/food-photography.jpg"
  },
  {
    name:        "Burger my world",
    description: "Fat only",
    price:       31,
    food_type:   "American",
    user:        User.where(last_name: "Obama").first,
    photo_url:   "http://www.reason-marketing.com/gallery/Why-you-should-hire-a-professional-food-photographer-for-your-restaurant-picture/Why-you-should-hire-a-professional-food-photographer-for-your-restaurant.jpg"
  },
  {
    name:        "Les Demoiselles d'Avignon",
    description: "French",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "Picasso").first,
    photo_url:   "https://static1.squarespace.com/static/56944c561c121086a8898a53/t/56b299ba22482e9cac1e41e7/1454545339432/food3.jpg?format=1500w"
  },
  {
    name:        "Grand-Mother dinner",
    description: "old stuff",
    price:       50,
    food_type:   "British",
    user:        User.where(last_name: "Thatcher").first,
    photo_url:   "https://s-media-cache-ak0.pinimg.com/originals/5b/1f/35/5b1f35e53451489f3d522327f62d20f3.jpg"
  },
  {
    name:        "Coquillage et Crustacé",
    description: "Sur la plage abandonnée, Coquillage et crustacés, Qui l'eût cru déplorent la perte de l'été, Qui depuis s'en est allé, On a rangé les vacances, Dans des valises en carton, Et c'est triste quand on pense à la saison, Du soleil et des chansons...",
    price:       45,
    food_type:   "French",
    user:        User.where(last_name: "Bardot").first,
    photo_url:   "http://nuena.com/wp-content/uploads/2012/04/Anchovies.jpg"
  },
  {
    name:        "Sea, Shell and Sun",
    description: "Le soleil au zénith, Vingt ans, dix-huit, Dix-sept ans à la limite, Je ressuscite, Sea, sex and sun, Toi petite, Tu es de la dynamite",
    price:       150,
    food_type:   "French",
    user:        User.where(last_name: "Gainsbarre").first,
    photo_url:   "http://www.vtfarmtoplate.com/assets/stories/images/Hen%20of%20the%20Wood_1.jpg"
  },
  {
    name:        "Prêt-A-Savourer",
    description: "Haute couture of French cuisine. Simply.",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "Gaultier").first,
    photo_url:   "https://s-media-cache-ak0.pinimg.com/736x/66/b0/48/66b048ccc0792f204c6d557267f7c27e.jpg"
  },
  {
    name:        "Guernica with a Salmon",
    description: "",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "Picasso").first,
    photo_url:   "http://www.wildalaskaseafood.com/wp-content/uploads/2015/03/4_osso_bucco_web.jpg"
  },
  {
    name:        "Joe le thon",
    description: "C'est sa vie.",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "Paradis").first,
    photo_url:   "http://professional.birchandwaite.com.au/wp-content/uploads/2016/11/Sesame-Seared-Tuna-with-Japanese-Style-Dressing.jpg"
  },
  {
    name:        "Les Fleurs du Magasin",
    description: "Je préfère au constance, à l'opium, aux nuits, l'élixir de ta bouche où l'amour se pavane.",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "Baudelaire").first,
    photo_url:   "https://cdn.pixabay.com/photo/2017/03/03/18/40/quark-2114690__340.jpg"
  },
  {
    name:        "La Buveuse d'Absinthe",
    description: "A cherry tomato. And a lot of alcool.",
    price:       50,
    food_type:   "French",
    user:        User.where(last_name: "").first,
    photo_url:   "http://www.wallpapermania.eu/images/lthumbs/2013-08/5849_Professional-photo-berries-in-a-glass-of-drink.jpg"
  },
  {
    name:        "Fish but no Chips",
    description: "Real fish the French way",
    price:       69,
    food_type:   "French",
    user:        User.where(last_name: "Picasso").first,
    photo_url:   "http://www.goodeyeblog.com/wp-content/uploads/2013/10/1787_d800b_Maso_Restaurant_Westin_Hotel_San_Francisco_Food_Photography_web(pp_w1200_h801).jpg"
  }
]

meals_attributes.each { |params| Meal.create!(params) }

50.times  do
  date = Date.parse(rand(1..90).days.from_now.strftime("%d/%m/%Y"))
  number_customers = rand(2..9)

  Booking.create!({
    date:             date,
    number_customers: number_customers,
    meal_id:          Meal.all.sample.id,
    user_id:          User.all.sample.id
})
end

puts "Seed OKAYYY"
