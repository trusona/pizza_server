module Commands
  class GetPizzas
    def initialize repo: Repositories::Pizza
      @repo = repo
    end

    def call **args
      @repo.list
    end
  end
end
