class Dog
    attr_accessor :name, :age
    attr_reader :owners

    def initialize name, age
        @name = name
        @age = age
    end

    def add_owner owners
        DogOwner.new(self, owner)
    end

    def owners
        dog_owners = DogOwner.all.select do |dog_owner|
            dog_owner.dog == self
        end

        dog_owners.map do |dog_owner|
            dog_owner.owner
        end

        owner.uniq
    end
end
