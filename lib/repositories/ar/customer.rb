module Repositories
  module AR
    class Customer
      class << self
        def create attributes
          AR::Models::Customer.create!(attributes)
        end

        def read id
          AR::Models::Customer.find(id)
        end

        def list
          Models::Customer.all
        end
      end
    end
  end
end