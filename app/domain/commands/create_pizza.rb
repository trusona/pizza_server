module Commands
  class CreatePizza
    def initialize(repo: Repositories::Pizza)
      @repo = repo.new
    end

    def run pizza:
      @repo.create!(pizza)
    end
  end
end
