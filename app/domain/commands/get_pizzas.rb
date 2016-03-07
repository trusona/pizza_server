module Commands
  class GetPizzas
    def initialize(repo: Repositories::Pizza)
      @repo = repo
    end

    def run
      @repo.all
    end
  end
end
