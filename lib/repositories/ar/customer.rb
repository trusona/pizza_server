module Repositories
  module AR
    class Customer
      class << self
        def create attributes
          Models::Customer.create!(attributes)
        end

        def read id
          Models::Customer.find(id)
        end

        def list
          Models::Customer.all
        end
      end
    end
  end
end