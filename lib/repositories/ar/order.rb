module Repositories
  module AR
    class Order
      class << self
        def create attributes
          customer = attributes.delete('customer')
          items = attributes.delete('items').map do |attributes| 
            Repositories::AR::Models::OrderItem.new(attributes)
          end
          Repositories::AR::Models::Order.create!(attributes.merge(customer_id: customer.id, items: items))
        end

        def read id
          Repositories::AR::Models::Order.find(id)
        end

        def list
          Repositories::AR::Models::Order.all
        end
      end
    end
  end
end
