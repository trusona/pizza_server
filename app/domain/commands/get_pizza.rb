module Commands
  class GetPizza
    def initialize repo: Repositories::Pizza
      @repo = repo
    end

    def call id:
      @repo.read id
    end
  end
end
