module Repositories
  module AR
    class Topping

      class << self
        def create attributes
          Repositories::AR::Models::Topping.create! attributes
        end

        def all
          Repositories::AR::Models::Topping.all
        end
      end
    end
  end
end
