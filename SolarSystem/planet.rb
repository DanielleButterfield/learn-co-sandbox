class Planet
    attr_reader :name, :order
    attr_accessor :size

    @@all = []

    def initialize(name, size, order)
        @name = name
        @size = size
        @order = order
        @@all << self
    end

    def self.all
        @@all
    end
end
