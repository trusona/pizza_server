module Repositories
  module AR
    class Pizza
      class << self
        def create attributes
          Repositories::AR::Models::Pizza.create! attributes
        end

        def read id
          Repositories::AR::Models::Pizza.find id
        end

        def list
          Repositories::AR::Models::Pizza.all
        end
      end
    end
  end
end
