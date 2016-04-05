module Models
  class Topping
    attr_accessor :name
    def initialize(attributes={})
      @name = attributes[:name]
    end
  end
end
