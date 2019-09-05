require 'pry'
require_relative './brand'
require_relative './flavor'
require_relative './brandflavor'

vanilla = Flavor.new("Good", "Vanilla")
strawberry = Flavor.new("The best", "Strawberry")
vegetableberry = Flavor.new("The worst", "VegetableBerry")
bean = Flavor.new("OK", "Bean")

danon = Brand.new("Danon")
greek = Brand.new("Greek")

brandflavor1 = BrandFlavor.new(danon, vanilla)
brandflavor2 = BrandFlavor.new(danon, strawberry)
brandflavor3 = BrandFlavor.new(greek, vanilla)

binding.pry