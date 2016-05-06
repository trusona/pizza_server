module Models
  class Order
  	attr_reader :pizzas, :id
    def initialize attributes = {}
      @pizzas = attributes['pizzas']
      @id     = attributes['id']
    end
  end
end