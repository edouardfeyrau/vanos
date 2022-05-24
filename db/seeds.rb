# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Van.create(title: "Le bon campeur", description: "le meilleur des camping-car", seats: 8, location: "France", user_id: 1, price_per_day: 80)
Van.create(title: "Le vieux campeur", description: "le plus merdique des camping-car mais on l'aime quand même", seats: 6, location: "Italie", user_id: 1, price_per_day: 65)

puts "Finished!"
