class Owner
    attr_accessor :name, :age
    attr_reader :dogs

    def initialize name, age
        @name = name
        @age = age
        @dogs = []
    end

    def add_dog dogs
        DogOwner.new(dog, self)
    end

    def dogs
        dog_owners = DogOwner.all.select do |dog_owner|
            dog_owner.owner == self
        end

        dogs = dog_owners.map do |dog_owner|
            dog_owner.dog
        end

        owner.uniq
    end
end
