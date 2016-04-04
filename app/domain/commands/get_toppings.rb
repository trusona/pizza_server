module Commands
  class GetToppings
    def initialize repo: Repositories::Topping
      @repo = repo
    end

    def call **args
      @repo.all.map &:name
    end
  end
end
