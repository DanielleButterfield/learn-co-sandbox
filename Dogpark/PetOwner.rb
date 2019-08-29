class DogOwner
    @@all = []

    def initialize dog, DogOwner
        @dog = dog
        @owner = owner

        @@all << self
    end

    def self.all
        @@all
    end
end