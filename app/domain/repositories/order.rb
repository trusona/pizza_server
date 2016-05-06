module Repositories
  class Order < Base
  	@collection = {}
  
    def self.model
      Models::Order
    end
  end
end
