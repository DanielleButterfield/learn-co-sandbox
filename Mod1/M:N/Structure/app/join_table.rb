class Jointable
    attr_reader :person, :place, :string, :integer

    @@all = []

    def initialize(person, place, string, integer)
        @person = person
        @place = place
        @string = string
        @integer = integer

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

    def string
        @string
    end

    def integer
        @integer
    end
end