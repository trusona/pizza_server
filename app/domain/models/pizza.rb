module Models
  class Pizza
    attr_reader :name, :description, :toppings, :id

    def initialize attributes = {}
      @name        = attributes['name']
      @description = attributes['description']
      @toppings    = attributes['toppings']
      @id          = attributes['id']
    end

    def toppings
      @toppings.map { |t| Topping.new(name: t).name }
    end

    # Entity objects are equal if their ids are the same
    def == pizza
      @id == pizza.id
    end
  end
end
