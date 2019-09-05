class Doctor
    attr_reader :name, :field
    
    @@all = []

    def initialize(name, field)
        @name = name
        @field = field

        @@all <<self
    end

    def self.all
        @@all
    end
end
