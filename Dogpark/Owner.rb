class Owner
    attr_reader :name
    attr_accessor :dogs, :genderIdentity

    @@all = []

    def initialize name, genderIdentity
        @name = name
        @genderIdentity = genderIdentity
        @@all << self
    end

    def self.all
        @@all
    end
end
