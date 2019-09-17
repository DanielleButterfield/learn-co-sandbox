class Brand
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_flavor(flavor)
        BrandFlavor.new(self, flavor)
    end

    def flavors
        BrandFlavor.all.select do |brand_flavor|
            brand_flavor.brand == self
        end.map(&:flavor).uniq
    end
end
