module Commands
  class GetPizza
    def initialize(repo: Repositories::Pizza)
      @repo = repo
    end

    def run id:
      binding.pry
      @repo.find(id)
    end
  end
end
