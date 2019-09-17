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

    def get_person
        Jointable.all.find do |home|
            home.place == self
        end.person
    end
end