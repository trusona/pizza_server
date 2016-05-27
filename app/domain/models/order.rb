module Models
  class Order
  	attr_reader :id, :items, :customer
    
    def initialize attributes = {}
      @items    = attributes['items']
      @id       = attributes['id']
      @customer = attributes['customer']
      @items    = []
    end


    def add_item pizza:, quantity:, price:
      @items << OrderItem.new(pizza: pizza, quantity: quantity, price: price)
      @items.last
    end

    def == order
      @id == order.id
    end
  end
end