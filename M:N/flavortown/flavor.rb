class Flavor
    attr_reader :description, :label
    @@all = []

    def initialize(description, label)
        @description = description
        @label = label
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_brand(brand)
        BrandFlavor.new(brand, self)
    end

    def brands
        BrandFlavor.all.select do |brand_flavor|
            brand_flavor.flavor == self
        end.map(&:brand).uniq
    end
end
