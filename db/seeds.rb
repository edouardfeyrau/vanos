# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Van.destroy_all
User.destroy_all
puts "start seed"

User.create(
  first_name: "Enzo",
  last_name: "Declercq",
  email: "enzo.declercq@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Lena",
  last_name: "Claeys",
  email: "Lena.Claeys@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Linde",
  last_name: "Bogaerts",
  email: "Linde.Bogaerts@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Finn",
  last_name: "Borremans",
  email: "Finn.Borremans@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Tristan",
  last_name: "Goethals",
  email: "Tristan.Goethals@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Yanis",
  last_name: "Leroy",
  email: "Yanis.Leroy@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Arne",
  last_name: "Coppens",
  email: "Arne.Coppens@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Axelle",
  last_name: "Moreau",
  email: "Axelle.Moreau@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Sara",
  last_name: "Simons",
  email: "Sara.Simons@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Antoine",
  last_name: "Verstraeten",
  email: "Antoine.Verstraeten@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Anna",
  last_name: "Renard",
  email: "Anna.Renard@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Hajar",
  last_name: "Descamps",
  email: "Hajar.Descamps@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Célia",
  last_name: "Poncelet",
  email: "Célia.Poncelet@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Vince",
  last_name: "Verheyen",
  email: "Vince.Verheyen@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Martin",
  last_name: "Goffin",
  email: "Martin.Goffin@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Elise",
  last_name: "Borremans",
  email: "Elise.Borremans@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Tibo",
  last_name: "Verhaegen",
  email: "Tibo.Verhaegen@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Daan",
  last_name: "Vermeersch",
  email: "Daan.Vermeersch@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Maya",
  last_name: "Collignon",
  email: "Maya.Collignon@gmail.com",
  password: "1234567"
)

User.create(
  first_name: "Nolan",
  last_name: "Vandamme",
  email: "Nolan.Vandamme@gmail.com",
  password: "1234567"
)

file1 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653467843/bfs1rue2la5rm0x8xldu.avif")
van1 = Van.new(
  title: "Marco Polo",
  description: "Véhicule idéal pour les aventuriers prêts à explorer le monde",
  seats: 4,
  location: "Paris",
  price_per_day: 68,
  user_id: 1
  # photo: "app/assets/images/Marco_Polo.avif"
)
van1.photo.attach(io: file1, filename: "Marco_Polo.avif", content_type: "image/png")
van1.save

file2 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468582/cgjlfxeqcan5zntnjiqn.jpg")
van2 = Van.new(
  title: "VW Combi Vintage",
  description: "Entièrement équipée et tout confort, vous n'avez plus qu'à poser vos valises et suivre votre itinéraire.",
  seats: 6,
  location: "Grenoble",
  price_per_day: 185,
  user_id: 2
  # photo: "app/assets/images/VW_COMBI_VINTAGE_T2_MOJITO.jpg"
)
van2.photo.attach(io: file2, filename: "VW_COMBI_VINTAGE_T2_MOJITO.jpg", content_type: "image/png")
van2.save

file3 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468584/eejjk3azztmzntfgnnbt.avif")
van3 = Van.new(
  title: "Wrangler",
  description: "Montez à bord et partez à l’aventure dans notre nouvelle Jeep Camper 4×4 à toit ouvrant.",
  seats: 5,
  location: "Bordeaux",
  price_per_day: 130,
  user_id: 3
  # photo: "app/assets/images/Wrangler.avif"
)
van3.photo.attach(io: file3, filename: "Wrangler.avif", content_type: "image/png")
van3.save

file4 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468585/rkizbivnwpizioq9pdyu.jpg")
van4 = Van.new(
  title: "Fiat Seal Rimor 5",
  description: "Convient aux familles avec 6 couchages et des équipements modernes.",
  seats: 6,
  location: "Lille",
  price_per_day: 140,
  user_id: 4
  # photo: "app/assets/images/Fiat_Seal_Rimor_5.jpg"
)
van4.photo.attach(io: file4, filename: "Fiat_Seal_Rimor_5.jpg", content_type: "image/png")
van4.save

file5 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468588/zqbq9ygbkxtrwvhzbe47.jpg")
van5 = Van.new(
  title: "VW T6 California Ocean",
  description: "Grâce à sa grande lucarne et à la fonction lounge du lit inférieur, il vous gâte avec des vues uniques.",
  seats: 4,
  location: "Paris",
  price_per_day: 138,
  user_id: 5
  # photo: "app/assets/images/VW_T6_California_Ocean.jpg"
)
van5.photo.attach(io: file5, filename: "VW_T6_California_Ocean.jpg", content_type: "image/png")
van5.save

file6 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468589/pgusiju2pm7r4m5sz9iq.jpg")
van6 = Van.new(
  title: "Wide Path Camper",
  description: "La caravane pliable pour le vélo électrique !",
  seats: 2,
  location: "Paris",
  price_per_day: 138,
  user_id: 6
  # photo: "app/assets/images/Wide_Path_Camper.jpg"
)
van6.photo.attach(io: file6, filename: "Wide_Path_Camper.jpg", content_type: "image/png")
van6.save

file7 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468591/g437vmku88e6mqxkwscn.jpg")
van7 = Van.new(
  title: "Ford Transit 2018",
  description: "Une vraie maison roulante !",
  seats: 3,
  location: "Nantes",
  price_per_day: 160,
  user_id: 7
  # photo: "app/assets/images/Ford_Transit_2018.jpg"
)
van7.photo.attach(io: file7, filename: "Ford_Transit_2018.jpg", content_type: "image/png")
van7.save

file8 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468593/qamvo5srw8x7zowponch.jpg")
van8 = Van.new(
  title: "Ahorn Camp 660",
  description: "Le camping-car parfait pour les familles et les couples.",
  seats: 5,
  location: "Marseille",
  price_per_day: 139,
  user_id: 8
  # photo: "app/assets/images/Ahorn_Camp_660.jpg"
)
van8.photo.attach(io: file8, filename: "Ahorn_Camp_660.jpg", content_type: "image/png")
van8.save

file9 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468595/tlaw6jidhlhkjfmheu6p.jpg")
van9 = Van.new(
  title: "Vito Spacieux",
  description: "Ce mobile est idéal si vous souhaitez principalement rester à l'extérieur et en même temps emporter beaucoup de choses avec vous",
  seats: 3,
  location: "Lyon",
  price_per_day: 134.5,
  user_id: 9
  # photo: "app/assets/images/Vito_spacieux.jpeg"
)
van9.photo.attach(io: file9, filename: "Vito_spacieux.jpeg", content_type: "image/png")
van9.save

file10 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468597/ehkht3suicd6bhafqpea.jpg")
van10 = Van.new(
  title: "Le chalet sur roues",
  description: "ce van un espace chaleureux, comme dans un petit chalet de montagne.",
  seats: 3,
  location: "Nice",
  price_per_day: 221,
  user_id: 10
  # photo: "app/assets/images/chalet_sur_roues.jpg"
)
van10.photo.attach(io: file10, filename: "chalet_sur_roues.jpg", content_type: "image/png")
van10.save

file11 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468599/to3dmibqib3tsysgv0ad.jpg")
van11 = Van.new(
  title: "Volkswagen California",
  description: "Superbe van california, tout aménagé",
  seats: 5,
  location: "Bougival",
  price_per_day: 140,
  user_id: 11
  # photo: "app/assets/images/Volkswagen_California.jpg"
)
van11.photo.attach(io: file11, filename: "Volkswagen_California.jpg", content_type: "image/png")
van11.save

file12 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468600/jvwk5uesp13bxan4njzc.avif")
van12 = Van.new(
  title: "Rebel",
  description: "Le Rebel n'est pas un camping-car, c'est une Jeep Renegade équipée d'une tente à coque dure sur son toit.",
  seats: 4,
  location: "Brest",
  price_per_day: 64,
  user_id: 12
  # photo: "app/assets/images/Rebel.avif"
)
van12.photo.attach(io: file12, filename: "Rebel.avif", content_type: "image/png")
van12.save

file13 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468602/njdfi2lvorbf4mb8bifb.avif")
van13 = Van.new(
  title: "Atlas 5",
  description: "Ce camping-car semi-intégré est le plus grand véhicule de la flotte",
  seats: 5,
  location: "Orléans",
  price_per_day: 206,
  user_id: 13
  # photo: "app/assets/images/Atlas5.avif"
)
van13.photo.attach(io: file13, filename: "Atlas5.avif", content_type: "image/png")
van13.save

file14 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468603/h2ntxiax8vowmk2pftxv.avif")
van14 = Van.new(
  title: "Nomad",
  description: "L'intérieur de ce van comprend un espace de vie avec une kitchenette, une salle de bain et un espace de couchag",
  seats: 4,
  location: "Dunkerque",
  price_per_day: 197,
  user_id: 14
  # photo: "app/assets/images/Nomad.avif"
)
van14.photo.attach(io: file14, filename: "Nomad.avif", content_type: "image/png")
van14.save

file15 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468605/tcrgiel04gqpy0xnvbwr.jpg")
van15 = Van.new(
  title: "Ford Transit",
  description: "Idéal pour les couples et les voyageurs en solo, nos camping-cars Ford Transit à empattement court sont parfaits pour les longs trajets en voiture à petit budget",
  seats: 2,
  location: "Paris",
  price_per_day: 105,
  user_id: 15
  # photo: "app/assets/images/Ford_Transit.jpg"
)
van15.photo.attach(io: file15, filename: "Ford_Transit.jpg", content_type: "image/png")
van15.save

file16 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468608/msg3prsu9frrkwcwxipj.jpg")
van16 = Van.new(
  title: "RV65",
  description: "Van tout équipé avec nombreux rangements",
  seats: 4,
  location: "Lyon",
  price_per_day: 221,
  user_id: 16
  # photo: "app/assets/images/RV65.jpg"
)
van16.photo.attach(io: file16, filename: "RV65.jpg", content_type: "image/png")
van16.save

file17 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468610/d6ao1ojxclrbmlvgjsnc.jpg")
van17 = Van.new(
  title: "Comfort in the Wild",
  description: "Ce van est équipé d'une cuisine qui ravirera tous les gourmands",
  seats: 2,
  location: "Limoges",
  price_per_day: 102,
  user_id: 17
  # photo: "app/assets/images/Comfort_in_the_Wild.jpg"
)
van17.photo.attach(io: file17, filename: "Comfort_in_the_Wild.jpg", content_type: "image/png")
van17.save

file18 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468612/che3sy2unpchii0xxpku.jpg")
van18 = Van.new(
  title: "Titan the cosy camper",
  description: "Rencontrer titan le campeur confortable. Entièrement équipé dans le design vw",
  seats: 3,
  location: "Grenoble",
  price_per_day: 105,
  user_id: 18
  # photo: "app/assets/images/Titan_the_cosy_camper.jpg"
)
van18.photo.attach(io: file18, filename: "Titan_the_cosy_camper.jpg", content_type: "image/png")
van18.save

file19 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468633/gbnwr6s1uzjyfdrjnfnv.jpg")
van19 = Van.new(
  title: "Luxury Glamper Van",
  description: "Vous aimez les grands espaces, mais vous aimez aussi le confort de votre maison ? Alors dites bonjour à notre Glamper Van super chic de fabrication allemande !",
  seats: 4,
  location: "Paris",
  price_per_day: 406,
  user_id: 19
  # photo: "app/assets/images/Luxury_Glamper_Van.jpg"
)
van19.photo.attach(io: file19, filename: "Luxury_Glamper_Van.jpg", content_type: "image/png")
van19.save

file20 = URI.open("https://res.cloudinary.com/dkn6slr3b/image/upload/v1653468639/ycvps1g0k4jghmuwgaaf.png")
van20 = Van.new(
  title: "Clockwork Orange",
  description: "Découvrez la liberté, le plaisir et les bons moments dans votre propre camping-car de luxe VW équipé de tout ce dont vous avez besoin pour vous déconnecter pendant quelques jours",
  seats: 4,
  location: "Lyon",
  price_per_day: 153,
  user_id: 20
  # photo: "app/assets/images/Clockwork_Orange.png"
)
van20.photo.attach(io: file20, filename: "Clockwork_Orange.png", content_type: "image/png")
van20.save

puts "finished"

# Cloudinary::Uploader.upload("app/assets/images/VW_COMBI_VINTAGE_T2_MOJITO.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Wrangler.avif")
# Cloudinary::Uploader.upload("app/assets/images/Fiat_Seal_Rimor_5.jpg")
# Cloudinary::Uploader.upload("app/assets/images/VW_T6_California_Ocean.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Wide_Path_Camper.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Ford_Transit_2018.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Ahorn_Camp_660.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Vito_spacieux.jpeg")
# Cloudinary::Uploader.upload("app/assets/images/chalet_sur_roues.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Volkswagen_California.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Rebel.avif")
# Cloudinary::Uploader.upload("app/assets/images/Atlas5.avif")
# Cloudinary::Uploader.upload("app/assets/images/Nomad.avif")
# Cloudinary::Uploader.upload("app/assets/images/Ford_Transit.jpg")
# Cloudinary::Uploader.upload("app/assets/images/RV65.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Comfort_in_the_Wild.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Titan_the_cosy_camper.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Luxury_Glamper_Van.jpg")
# Cloudinary::Uploader.upload("app/assets/images/Clockwork_Orange.png")
