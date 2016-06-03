module Models
  class Pizza
    attr_reader :name, :description, :toppings, :price, :id
    attr_writer :price

    def initialize attributes = {}
      @name        = attributes['name']
      @description = attributes['description']
      @toppings    = attributes['toppings']
      @id          = attributes['id']
      @price       = attributes['price']
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
