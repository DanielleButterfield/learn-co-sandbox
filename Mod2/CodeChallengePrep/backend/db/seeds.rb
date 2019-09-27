# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hero.destroy_all
Power.destroy_all

distort_senses = Power.create({
    name: "Distort Senses",
    description: "Distorts senses"
})

fire_breath = Power.create({
    name: "Fire Breath",
    description: "Breathe fire"
})

time_manipulation = Power.create({
    name: "TIme Manipulation",
    description: "Manipulate time"
})

fire_breath.heroes.create([
    {
        name: "Natsu",
        super_name: "Salamander"
    },
    {
        name: "Igneel",
        super_name: "Fire Dragon King"
    }
])

distort_senses.heroes.create([
    {
        name: "Jack",
        super_name: "Megamind"
    }
])

time_manipulation.heroes.create([
    {
        name: "New Kid",
        super_name: "The Amazing Butthole"
    }
])