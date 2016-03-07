module Commands
  class GetPizzaToppings
    def initialize(repo: Commands::GetPizza)
      @repo = repo
    end

    def run id:
      @repo.new.run(id: id).pizza_toppings
    end
  end
end
