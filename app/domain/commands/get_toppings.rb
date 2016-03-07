module Commands
  class GetToppings
    def initialize(repo: Repositories::Topping)
      @repo = repo
    end

    def run
      @repo.all
    end
  end
end
