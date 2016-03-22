module Commands
  class CreateToppingsFromPizza
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def run pizza:
      { success: true,
        errors: [],
        result: toppings(pizza)}
    end

    private

    def toppings(pizza)
      pizza['toppings'].map do |topping|
        @repo.create name: topping
        topping
      end
    end
  end
end
