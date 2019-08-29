require "pry"
require_relative "./owner"
require_relative "./pet"

danielle = Owner.new "Danielle", "Transfeminine Non-Binary"
kevin = Owner.new "Kevin", "Cisgender Male"
patt = Owner.new "Patt", "Cisgender Female"

raven = Pet.new "Raven", "Black Lab", danielle
fable = Pet.new "Fable", "Ausralian Shepherd Mix", danielle
jack = Pet.new "Jack", "Pitbull Mix", kevin
sam = Pet.new "Sam", "Parakeet", patt
dean = Pet.new "Dean", "Parakeet", patt

binding.pry