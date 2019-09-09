class Place
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def person
        @person
    end

    def place
        @place
    end
end