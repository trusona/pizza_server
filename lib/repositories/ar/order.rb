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
          Factory.call(row)
        end

        def read id
          Factory.call(Row.find(id))
        end

        def list
          Row.all.map {|row| Factory.call(row) }
        end
      end

      class Factory
        class << self
          def call(ar_model)
            customer = AR::Customer.read(ar_model.customer_id)
            Models::Order.new(ar_model.attributes.merge('customer' => customer))
          end
        end
      end
    end
  end
end
