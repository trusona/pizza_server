module Commands
  class GetPizzas
    def initialize repo: Repositories::Pizza
      @repo = repo
    end

    def call
      @repo.all
    end
  end
end
