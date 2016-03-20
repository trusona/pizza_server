module Commands
  class GetPizza
    def initialize repo: Repositories::Pizza
      @repo = repo.new
    end

    def run id:
      @repo.find id
    end
  end
end
