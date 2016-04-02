module Commands
  class GetToppings
    def initialize repo: Repositories::Topping
      @repo = repo
    end

    def call
      @repo.all.map &:name
    end
  end
end
