require "pry"
require_relative "./owner"
require_relative "./pet"

danielle = Owner.new "Danielle", "Transfeminine Non-Binary"
kevin = Owner.new "Kevin", "Cisgender Male"
patt = Owner.new "Patt", "Cisgender Female"

raven = Pet.new "Raven", "Black Lab", danielle.name
fable = Pet.new "Fable", "Ausralian Shepherd Mix", danielle.name
jack = Pet.new "Jack", "Pitbull Mix", kevin.name
sam = Pet.new "Sam", "Parakeet", patt.name
dean = Pet.new "Dean", "Parakeet", patt.name

binding.pry