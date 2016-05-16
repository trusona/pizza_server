module Repositories
  class Customer < Base
  	@collection = {}
  
    def self.model
      Models::Customer
    end
  end
end
