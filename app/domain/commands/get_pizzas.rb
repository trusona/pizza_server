module Commands
  class GetPizzas
    def initialize(repo: Repositories::Pizza)
      @repo = repo.new
    end

    def run
      @repo.all
    end
  end
end
