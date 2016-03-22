module Commands
  class GetToppings
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def run
      @repo.all.map &:name
    end
  end
end
