module Models
  class Order
  	attr_reader :id, :items
    
    def initialize attributes = {}
      @pizzas = attributes['pizzas']
      @id     = attributes['id']
      @items  = []
    end

    def add_item pizza:, quantity:
      @items << OrderItem.new(pizza: pizza, quantity: quantity)
      @items.last
    end
  end
end