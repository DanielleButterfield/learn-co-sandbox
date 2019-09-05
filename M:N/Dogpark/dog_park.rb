class Dogpark
    attr_reader :pet, :owner
     
    @@all = []

    def initialize pet, owner
        @pet = pet
        @owner = owner
        @@all << self
    end

    def self.all
        @@all
    end
end