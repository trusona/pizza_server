module Repositories
  module AR
    class Pizza
      class Row < ActiveRecord::Base
        self.table_name = "pizzas"
      end

      class << self
        def create attributes
          Models::Pizza.new(Row.create!(attributes).attributes)
        end

        def read id
          Row.find id
        end

        def list
          Row.all.map {|row| Models::Pizza.new(row.attributes)}
        end
      end
    end
  end
end
