class Owner
    attr_accessor :name, :age
    attr_reader :dogs

    def initialize name, age
        @name = name
        @age = age
        @dogs = [
        ]
    end

    def add_dog dogs
        @dogs << dogs
    end
end
