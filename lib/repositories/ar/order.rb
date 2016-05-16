module Repositories
  module AR
    class Order
      class Row < ActiveRecord::Base
        attr_accessor :pizzas
        self.table_name = "orders"
        belongs_to :customer, class_name: "Repositories::AR::Customer::Row"
      end

      class << self
        def create attributes
          customer = attributes.delete('customer')
          row      = Row.create!(attributes.merge(customer_id: customer.id))
          Models::Order.new(row.attributes)
        end

        def read id
          Models::Order.new(Row.find(id).attributes)
        end

        def list
          Row.all.map {|row| Models::Order.new(row.attributes)}
        end
      end
    end
  end
end
