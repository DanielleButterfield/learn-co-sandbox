class Pet
    attr_reader :name, :breed
    attr_accessor :owner

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
