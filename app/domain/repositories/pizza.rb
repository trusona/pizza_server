module Repositories
  class Pizza
    @pizzas = {}

    def self.create!(attributes)
      @pizzas[next_id] = attributes.merge("id" => next_id )
    end

    def self.next_id
      @pizzas.keys.length + 1
    end

    def self.all
      @pizzas.values
    end

    def self.destroy_all
      @pizzas = {}
    end
  end
end
