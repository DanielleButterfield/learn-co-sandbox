class Homestate
    attr_reader :person, :place

    @@all = []

    def initialize(person, place)
        @person = person
        @place = place

        @@all << self
    end

    def self.all
        @@all
    end

    def get_home
        Homestate.all.select do |home|
            home.person == self
        end
    end
end