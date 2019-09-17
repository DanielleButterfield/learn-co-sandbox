class BrandFlavor
    attr_reader :brand, :flavor
    @@all = []

    def initialize(brand, flavor)
        @brand = brand
        @flavor = flavor
        @@all << self
    end

    def self.all
        @@all
    end
end