module Repositories
  module AR
    module Models
      class Customer < ActiveRecord::Base
        def == customer
          id == customer.id
        end
      end
    end
  end
end
