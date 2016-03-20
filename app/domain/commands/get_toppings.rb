module Commands
  class GetToppings
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def run
      @repo.all
    end
  end
end
