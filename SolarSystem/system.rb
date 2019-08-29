require 'pry'
require './planet'

pluto = Planet.new("Pluto", 1, 9)
mercury = Planet.new("Mercury", 2, 3)
earth = Planet.new("Earth", 4, 3)
jupiter = Planet.new("Jupiter", 9, 3)

def all_planets
    planet_array = []
    Planet.all.each do |planet|
        planet_array << planet.name
    end
    planet_array
end

def large_planets
    planet_array = []
    Planet.all.each do |planet|
        if planet.size.to_i >= 7
            planet_array << planet.name
        end
    end
    planet_array
end

binding.pry