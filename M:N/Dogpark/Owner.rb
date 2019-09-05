class Owner
    attr_reader :name
    attr_accessor :pets, :age

    @@all = []

    def initialize name, age
        @name = name
        @age = age
        @@all << self
    end

    def pets
        Pet.all.select do |pet|
            pet.owner == self
        end
    end

    def breeds
        pets.map(&:breed).uniq
    end

    def self.all
        @@all
    end
end
