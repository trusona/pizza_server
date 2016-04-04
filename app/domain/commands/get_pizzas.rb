module Commands
  class GetPizzas
    def initialize repo: Repositories::Pizza
      @repo = repo
    end

    def call **args
      @repo.all
    end
  end
end
