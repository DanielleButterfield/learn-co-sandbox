class Pet
    attr_accessor :name, :breed
    attr_reader :owners

    @@all = []

    def initialize name, breed, owner
        @name = name
        @breed = breed
        @owner = owner
        @@all << self
    end

    def self.all
        @@all
    end
end
