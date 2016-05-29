module Models
  class OrderItem
    attr_accessor :pizza, :price, :quantity
    
    def initialize attributes = {}
      @pizza    = attributes['pizza']
      @price    = attributes['price']
      @quantity = attributes['quantity']
    end

    def total_price
      price * quantity
    end
  end
end