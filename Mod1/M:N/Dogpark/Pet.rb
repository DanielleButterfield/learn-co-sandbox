class Pet
    attr_reader :name, :breed
    attr_accessor :owner

    @@all = []

    def initialize name, breed
        @name = name
        @breed = breed
        @owner = owner
        @@all << self
    end

    def dogparks
        Dogpark.all.select do |dogpark|
            dogpark.pet == self
        end
    end

    def owners
        dogparks.map(&:owner)
    end

    def owner_names
        owners.map(&:name)
    end

    def longest_owner_name
        owner_names.max_by(&:length)
    end

    def owner_ages
        owners.map(&:age)
    end

    def avg_owner_age
        owner_ages.reduce(0) do |sum, age|
            sum + age
        end / owners.length
    end


    def self.all
        @@all
    end
end
