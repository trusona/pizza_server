module Repositories
  class Pizza
    @pizzas = {}

    def self.pizzas
      @pizzas
    end

    def self.pizzas= value
      @pizzas = value
    end

    def create! attributes
      self.class.pizzas[next_id] = attributes.merge("id" => next_id )
    end

    def all
      self.class.pizzas.values
    end

    def destroy_all
      self.class.pizzas = {}
    end

    private

    def next_id
      self.class.pizzas.keys.length + 1
    end
  end
end
