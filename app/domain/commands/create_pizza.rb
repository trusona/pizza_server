module Commands
  class CreatePizza
    def initialize(repo: Repositories::Pizza)
      @repo = repo
    end

    def run pizza:
      @repo.create!(pizza).attributes
    end
  end
end
