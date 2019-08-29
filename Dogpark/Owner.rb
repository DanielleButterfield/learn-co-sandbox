class Owner
    attr_reader :name
    attr_accessor :pets, :genderIdentity

    @@all = []

    def initialize name, genderIdentity
        @name = name
        @genderIdentity = genderIdentity
        @@all << self
    end

    def pets
        Pet.all.select do |pet|
            pet.owner == self
        end
    end

    def self.all
        @@all
    end
end
