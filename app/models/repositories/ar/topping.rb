module Repositories
  module AR
    class Topping
      class Row < ActiveRecord::Base
        self.table_name = "toppings"
      end

      class << self
        def create attributes
          Row.create(attributes).attributes
        end

        def all
          Row.all
        end
      end
    end
  end
end
