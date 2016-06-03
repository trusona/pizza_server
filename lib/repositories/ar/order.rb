module Repositories
  module AR
    class Order
      ORDER_MODEL      = Repositories::AR::Models::Order
      ORDER_ITEM_MODEL = Repositories::AR::Models::OrderItem
      
      class << self
        def create attributes
          customer = attributes.delete('customer')
          items = attributes.delete('items').map do |attributes| 
            ORDER_ITEM_MODEL.new(attributes)
          end
          ORDER_MODEL.create! attributes.merge(customer_id: customer.id, items: items)
        end

        def read id
          ORDER_MODEL.find(id)
        end

        def list
          ORDER_MODEL.all
        end
      end
    end
  end
end
