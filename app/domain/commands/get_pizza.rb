module Commands
  class GetPizza
    def initialize repo: Repositories::Pizza
      @repo = repo.new
    end

    def call id:
      @repo.read id
    end
  end
end
