module Repositories
  class Topping < Base

    def self.create(attributes)
      Models::Topping.new super
    end

  end
end
