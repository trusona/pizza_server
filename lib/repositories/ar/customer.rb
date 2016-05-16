module Repositories
  module AR
    class Customer
      class Row < ActiveRecord::Base
        self.table_name = "customers"
      end

      class << self
        def create attributes
          Models::Customer.new(Row.create!(attributes).attributes)
        end

        def read id
          Models::Customer.new(Row.find(id).attributes)
        end

        def list
          Row.all.map {|row| Models::Customer.new(row.attributes)}
        end
      end
    end
  end
end
