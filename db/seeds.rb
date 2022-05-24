# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Van.destroy_all

Van.create!(
  title: "Marco Polo",
  description: "Véhicule idéal pour les aventuriers prêts à explorer le monde",
  seats: 4,
  location: "Paris",
  price_per_day: 68,
  user_id: 1,
  photo: open("https://res.cloudinary.com/dvft1rloz/image/upload/v1653388403/zeaytbwz76ptklweiiar.avif")
)

Van.create!(
  title: "VW Combi Vintage Mojito",
  description: "Entièrement équipée et tout confort, vous n'avez plus qu'à poser vos valises et suivre votre itinéraire.",
  seats: 6,
  location: "Grenoble",
  price_per_day: 185,
  user_id: 2
)

Van.create!(
  title: "Wrangler",
  description: "Montez à bord et partez à l’aventure dans notre nouvelle Jeep Camper 4×4 à toit ouvrant.",
  seats: 5,
  location: "Bordeaux",
  price_per_day: 130,
  user_id: 3,
  photo: open("https://res.cloudinary.com/dvft1rloz/image/upload/v1653388403/zeaytbwz76ptklweiiar.avif")
)

Van.create!(
  title: "Fiat Seal Rimor 5",
  description: "Convient aux familles avec 6 couchages et des équipements modernes.",
  seats: 6,
  location: "Lille",
  price_per_day: 140,
  user_id: 4
)

Van.create!(
  title: "VW T6 California Ocean",
  description: "Grâce à sa grande lucarne et à la fonction lounge du lit inférieur, il vous gâte avec des vues uniques.",
  seats: 4,
  location: "Paris",
  price_per_day: 138,
  user_id: 5
)

Van.create!(
  title: "Wide Path Camper",
  description: "La caravane pliable pour le vélo électrique !",
  seats: 2,
  location: "Paris",
  price_per_day: 138,
  user_id: 6
)

Van.create!(
  title: "Ford Transit 2018",
  description: "Une vraie maison roulante !",
  seats: 3,
  location: "Nantes",
  price_per_day: 160,
  user_id: 7
)

Van.create!(
  title: "Ahorn Camp 660",
  description: "Le camping-car parfait pour les familles et les couples.",
  seats: 5,
  location: "Marseille",
  price_per_day: 139,
  user_id: 8
)

Van.create!(
  title: "Vito Spacieux",
  description: "Ce mobile est idéal si vous souhaitez principalement rester à l'extérieur et en même temps emporter beaucoup de choses avec vous",
  seats: 3,
  location: "Lyon",
  price_per_day: 134.5,
  user_id: 9
)

Van.create!(
  title: "Le chalet sur roues",
  description: "ce van un espace chaleureux, comme dans un petit chalet de montagne.",
  seats: 3,
  location: "Nice",
  price_per_day: 221,
  user_id: 10
)

Van.create!(
  title: "Volkswagen California",
  description: "Superbe van california, tout aménagé",
  seats: 5,
  location: "Bougival",
  price_per_day: 140,
  user_id: 11
)

Van.create!(
  title: "Rebel",
  description: "Le Rebel n'est pas un camping-car, c'est une Jeep Renegade équipée d'une tente à coque dure sur son toit.",
  seats: 4,
  location: "Brest",
  price_per_day: 64,
  user_id: 12
)

Van.create!(
  title: "Atlas 5",
  description: "Ce camping-car semi-intégré est le plus grand véhicule de la flotte",
  seats: 5,
  location: "Orléans",
  price_per_day: 206,
  user_id: 13
)

Van.create!(
  title: "Nomad",
  description: "L'intérieur de ce van comprend un espace de vie avec une kitchenette, une salle de bain et un espace de couchag",
  seats: 4,
  location: "Dunkerque",
  price_per_day: 197,
  user_id: 14
)

Van.create!(
  title: "Ford Transit",
  description: "Idéal pour les couples et les voyageurs en solo, nos camping-cars Ford Transit à empattement court sont parfaits pour les longs trajets en voiture à petit budget",
  seats: 2,
  location: "Paris",
  price_per_day: 105,
  user_id: 15
)

Van.create!(
  title: "RV65",
  description: "Van tout équipé avec nombreux rangements",
  seats: 4,
  location: "Lyon",
  price_per_day: 221,
  user_id: 16
)

Van.create!(
  title: "Comfort in the Wild",
  description: "Ce van est équipé d'une cuisine qui ravirera tous les gourmands",
  seats: 2,
  location: "Limoges",
  price_per_day: 102,
  user_id: 17
)

Van.create!(
  title: "Titan the cosy camper",
  description: "Rencontrer titan le campeur confortable. Entièrement équipé dans le design vw",
  seats: 3,
  location: "Grenoble",
  price_per_day: 105,
  user_id: 18
)

Van.create!(
  title: "Luxury Glamper Van",
  description: "Vous aimez les grands espaces, mais vous aimez aussi le confort de votre maison ? Alors dites bonjour à notre Glamper Van super chic de fabrication allemande !",
  seats: 4,
  location: "Paris",
  price_per_day: 406,
  user_id: 19
)

Van.create!(
  title: "Clockwork Orange",
  description: "Découvrez la liberté, le plaisir et les bons moments dans votre propre camping-car de luxe VW équipé de tout ce dont vous avez besoin pour vous déconnecter pendant quelques jours",
  seats: 4,
  location: "Lyon",
  price_per_day: 153,
  user_id: 20
)
