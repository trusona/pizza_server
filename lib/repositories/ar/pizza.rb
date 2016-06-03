module Repositories
  module AR
    class Pizza
      class << self
        MODEL = Repositories::AR::Models::Pizza
        def create attributes
          MODEL.create! attributes
        end

        def read id
          MODEL.find id
        end

        def list
          MODEL.all
        end

        def update id, attributes
          order = MODEL.find id
          order.update attributes
          order
        end
      end
    end
  end
end
