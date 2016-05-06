module Repositories
  class Topping < Base
  	@collection = {}
    def self.model
      Models::Topping
    end
  end
end
