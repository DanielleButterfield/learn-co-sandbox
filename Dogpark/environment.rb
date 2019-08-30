require "pry"
require_relative "./owner"
require_relative "./pet"
require_relative "./dog_park"

danielle = Owner.new "Danielle", 27
kevin = Owner.new "Kevin", 25
patt = Owner.new "Patt", 60

raven = Pet.new "Raven", "Black Lab"
fable = Pet.new "Fable", "Ausralian Shepherd Mix"
jack = Pet.new "Jack", "Pitbull Mix"
sam = Pet.new "Sam", "Parakeet"
dean = Pet.new "Dean", "Parakeet"

dogpark1 = Dogpark.new(raven, danielle)
dogpark2 = Dogpark.new(raven, kevin)
dogpark3 = Dogpark.new(raven, patt)

binding.pry