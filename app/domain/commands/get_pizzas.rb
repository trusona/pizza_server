module Commands
  class GetPizzas
    def initialize repo: Repositories::Pizza
      @repo = repo.new
    end

    def call
      @repo.all
    end
  end
end
