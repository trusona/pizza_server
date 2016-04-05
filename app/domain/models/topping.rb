module Models
  class Topping
    attr_accessor :name

    def initialize(attributes={})
      @name = attributes[:name]
    end

    # Value objects are identical if their
    # values are the same
    def == topping
      @name == topping.name
    end
  end
end
