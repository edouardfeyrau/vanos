# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Van.destroy_all
User.destroy_all
puts "start seed"

User.create!(
  first_name: "Enzo",
  last_name: "Declercq",
  email: "enzo.declercq@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Lena",
  last_name: "Claeys",
  email: "Lena.Claeys@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Linde",
  last_name: "Bogaerts",
  email: "Linde.Bogaerts@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Finn",
  last_name: "Borremans",
  email: "Finn.Borremans@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Tristan",
  last_name: "Goethals",
  email: "Tristan.Goethals@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Yanis",
  last_name: "Leroy",
  email: "Yanis.Leroy@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Arne",
  last_name: "Coppens",
  email: "Arne.Coppens@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Axelle",
  last_name: "Moreau",
  email: "Axelle.Moreau@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Sara",
  last_name: "Simons",
  email: "Sara.Simons@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Antoine",
  last_name: "Verstraeten",
  email: "Antoine.Verstraeten@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Anna",
  last_name: "Renard",
  email: "Anna.Renard@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Hajar",
  last_name: "Descamps",
  email: "Hajar.Descamps@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Célia",
  last_name: "Poncelet",
  email: "Célia.Poncelet@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Vince",
  last_name: "Verheyen",
  email: "Vince.Verheyen@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Martin",
  last_name: "Goffin",
  email: "Martin.Goffin@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Elise",
  last_name: "Borremans",
  email: "Elise.Borremans@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Tibo",
  last_name: "Verhaegen",
  email: "Tibo.Verhaegen@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Daan",
  last_name: "Vermeersch",
  email: "Daan.Vermeersch@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Maya",
  last_name: "Collignon",
  email: "Maya.Collignon@gmail.com",
  encrypted_password: "1234"
)

User.create!(
  first_name: "Nolan",
  last_name: "Vandamme",
  email: "Nolan.Vandamme@gmail.com",
  encrypted_password: "1234"
)

Van.create!(
  title: "Marco Polo",
  description: "Véhicule idéal pour les aventuriers prêts à explorer le monde",
  seats: 4,
  location: "Paris",
  price_per_day: 68,
  user_id: 1,
  photo: "app/assets/images/Marco_Polo.avif"
)

Van.create!(
  title: "VW Combi Vintage Mojito",
  description: "Entièrement équipée et tout confort, vous n'avez plus qu'à poser vos valises et suivre votre itinéraire.",
  seats: 6,
  location: "Grenoble",
  price_per_day: 185,
  user_id: 2,
  photo: "app/assets/images/VW_COMBI_VINTAGE_T2_MOJITO.jpg"
)

Van.create!(
  title: "Wrangler",
  description: "Montez à bord et partez à l’aventure dans notre nouvelle Jeep Camper 4×4 à toit ouvrant.",
  seats: 5,
  location: "Bordeaux",
  price_per_day: 130,
  user_id: 3,
  photo: "app/assets/images/Wrangler.avif"
)

Van.create!(
  title: "Fiat Seal Rimor 5",
  description: "Convient aux familles avec 6 couchages et des équipements modernes.",
  seats: 6,
  location: "Lille",
  price_per_day: 140,
  user_id: 4,
  photo: "app/assets/images/Fiat_Seal_Rimor_5.jpg"
)

Van.create!(
  title: "VW T6 California Ocean",
  description: "Grâce à sa grande lucarne et à la fonction lounge du lit inférieur, il vous gâte avec des vues uniques.",
  seats: 4,
  location: "Paris",
  price_per_day: 138,
  user_id: 5,
  photo: "app/assets/images/VW_T6_California_Ocean.jpg"
)

Van.create!(
  title: "Wide Path Camper",
  description: "La caravane pliable pour le vélo électrique !",
  seats: 2,
  location: "Paris",
  price_per_day: 138,
  user_id: 6,
  photo: "app/assets/images/Wide_Path_Camper.jpg"
)

Van.create!(
  title: "Ford Transit 2018",
  description: "Une vraie maison roulante !",
  seats: 3,
  location: "Nantes",
  price_per_day: 160,
  user_id: 7,
  photo: "app/assets/images/Ford_Transit_2018.jpg"
)

Van.create!(
  title: "Ahorn Camp 660",
  description: "Le camping-car parfait pour les familles et les couples.",
  seats: 5,
  location: "Marseille",
  price_per_day: 139,
  user_id: 8,
  photo: "app/assets/images/Ahorn_Camp_660.jpg"
)

Van.create!(
  title: "Vito Spacieux",
  description: "Ce mobile est idéal si vous souhaitez principalement rester à l'extérieur et en même temps emporter beaucoup de choses avec vous",
  seats: 3,
  location: "Lyon",
  price_per_day: 134.5,
  user_id: 9,
  photo: "app/assets/images/Vito_spacieux.jpeg"
)

Van.create!(
  title: "Le chalet sur roues",
  description: "ce van un espace chaleureux, comme dans un petit chalet de montagne.",
  seats: 3,
  location: "Nice",
  price_per_day: 221,
  user_id: 10,
  photo: "app/assets/images/chalet_sur_roues.jpg"
)

Van.create!(
  title: "Volkswagen California",
  description: "Superbe van california, tout aménagé",
  seats: 5,
  location: "Bougival",
  price_per_day: 140,
  user_id: 11,
  photo: "app/assets/images/Volkswagen_California.jpg"
)

Van.create!(
  title: "Rebel",
  description: "Le Rebel n'est pas un camping-car, c'est une Jeep Renegade équipée d'une tente à coque dure sur son toit.",
  seats: 4,
  location: "Brest",
  price_per_day: 64,
  user_id: 12,
  photo: "app/assets/images/Rebel.avif"
)

Van.create!(
  title: "Atlas 5",
  description: "Ce camping-car semi-intégré est le plus grand véhicule de la flotte",
  seats: 5,
  location: "Orléans",
  price_per_day: 206,
  user_id: 13,
  photo: "app/assets/images/Atlas5.avif"
)

Van.create!(
  title: "Nomad",
  description: "L'intérieur de ce van comprend un espace de vie avec une kitchenette, une salle de bain et un espace de couchag",
  seats: 4,
  location: "Dunkerque",
  price_per_day: 197,
  user_id: 14,
  photo: "app/assets/images/Nomad.avif"
)

Van.create!(
  title: "Ford Transit",
  description: "Idéal pour les couples et les voyageurs en solo, nos camping-cars Ford Transit à empattement court sont parfaits pour les longs trajets en voiture à petit budget",
  seats: 2,
  location: "Paris",
  price_per_day: 105,
  user_id: 15,
  photo: "app/assets/images/Ford_Transit.jpg"
)

Van.create!(
  title: "RV65",
  description: "Van tout équipé avec nombreux rangements",
  seats: 4,
  location: "Lyon",
  price_per_day: 221,
  user_id: 16,
  photo: "app/assets/images/RV65.jpg"
)

Van.create!(
  title: "Comfort in the Wild",
  description: "Ce van est équipé d'une cuisine qui ravirera tous les gourmands",
  seats: 2,
  location: "Limoges",
  price_per_day: 102,
  user_id: 17,
  photo: "app/assets/images/Comfort_in_the_Wild.jpg"
)

Van.create!(
  title: "Titan the cosy camper",
  description: "Rencontrer titan le campeur confortable. Entièrement équipé dans le design vw",
  seats: 3,
  location: "Grenoble",
  price_per_day: 105,
  user_id: 18,
  photo: "app/assets/images/Titan_the_cosy_camper.jpg"
)

Van.create!(
  title: "Luxury Glamper Van",
  description: "Vous aimez les grands espaces, mais vous aimez aussi le confort de votre maison ? Alors dites bonjour à notre Glamper Van super chic de fabrication allemande !",
  seats: 4,
  location: "Paris",
  price_per_day: 406,
  user_id: 19,
  photo: "app/assets/images/Luxury_Glamper_Van.jpg"
)

Van.create!(
  title: "Clockwork Orange",
  description: "Découvrez la liberté, le plaisir et les bons moments dans votre propre camping-car de luxe VW équipé de tout ce dont vous avez besoin pour vous déconnecter pendant quelques jours",
  seats: 4,
  location: "Lyon",
  price_per_day: 153,
  user_id: 20,
  photo: "app/assets/images/Clockwork_Orange.png"
)

puts "finished"
