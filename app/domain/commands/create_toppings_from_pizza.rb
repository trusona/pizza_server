module Commands
  class CreateToppingsFromPizza
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def run pizza:
      pizza['toppings'].each do |topping|
        @repo.create name: topping
      end
    end
  end
end
