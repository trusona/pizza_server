module Models
  class Order
  	attr_reader :id, :items, :customer
    
    def initialize attributes = {}
      @items = []
      if attributes['items']
        @items = attributes['items'].map do |order_item_attributes|
          add_item(order_item_attributes)
        end
      end
      @id       = attributes['id']
      @customer = attributes['customer']
    end

    def add_item attributes = {}
      @items << OrderItem.new(attributes)
      @items.last
    end

    def price
      items.sum(&:price)
    end

    def == order
      @id == order.id
    end
  end
end