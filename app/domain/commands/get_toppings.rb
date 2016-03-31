module Commands
  class GetToppings
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def call
      @repo.all.map &:name
    end
  end
end
