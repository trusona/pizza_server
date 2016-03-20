module Repositories
  class Topping
    @toppings = {}

    def self.toppings
      @toppings
    end

    def self.toppings= value
      @pizzas = value
    end

    def create!(attributes)
      self.class.toppings[next_id] = attributes.merge("id" => next_id)
    end

    def all
      self.class.toppings.values
    end

    def destroy_all
      self.class.toppings = {}
    end

    private

    def next_id
      self.class.toppings.keys.length + 1
    end
  end
end
