class Owner
    attr_accessor :name, :age
    attr_reader :dogs

    @@all = []

    def initialize name, age
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end
