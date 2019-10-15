# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pirate.destroy_all
Ship.destroy_all

ship1 = Ship.create(name: "Queen Anne's Revenge")
ship2 = Ship.create(name: "Jackdaw")

pirate1 = Pirate.create(name: "Blackbeard", ship: ship1)
pirate2 = Pirate.create(name: "Edward Kenway", ship: ship2)