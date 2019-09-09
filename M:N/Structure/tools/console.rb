require_relative '../config/environment.rb'

person1 = Person.new("Danika", "Butterfield")
person2 = Person.new("Seth", "Hall")

place1 = Place.new("Colorado")
place2 = Place.new("Ohio")

home1 = Homestate.new(person1, place1)
home2 = Homestate.new(person2, place2)

binding.pry