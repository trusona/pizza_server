module Commands
  class GetPizza
    def initialize(repo: Repositories::Pizza)
      @repo = repo
    end

    def run id:
      @repo.find(id)
    end
  end
end
