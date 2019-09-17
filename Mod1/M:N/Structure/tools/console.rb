require_relative '../config/environment.rb'

person1 = Person.new("Danika", "Butterfield")
person2 = Person.new("Seth", "Hall")

place1 = Place.new("Colorado")
place2 = Place.new("Ohio")

home1 = Jointable.new(person1, place1, "String", 1)
home2 = Jointable.new(person2, place2, "String", 2)

binding.pry