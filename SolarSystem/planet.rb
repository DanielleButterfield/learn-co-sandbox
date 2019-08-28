class Planet
    attr_reader :name, :order
    attr_accessor :size

    def initialize(name, size, order)
        @name = name
        @size = size
        @order = order
    end

    def name
        @name
    end

    def order
        @order
    end

    def size
        @size
    end
end
