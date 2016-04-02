module Repositories
  module AR
    class Pizza
      class Row < ActiveRecord::Base
        self.table_name = "pizzas"
      end

      class << self
        def create attributes
          Row.create!(attributes).attributes
        end

        def read id
          Row.find id
        end

        def all
          Row.all
        end
      end
    end
  end
end
