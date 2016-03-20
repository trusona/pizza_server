module Repositories
  module AR
    class Pizza
      class Row < ActiveRecord::Base
        self.table_name = "pizzas"
      end

      def self.create!(attributes)
        Row.create!(attributes).attributes
      end

      def self.all
        Row.all
      end
    end
  end
end
