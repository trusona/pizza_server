module Commands
  class CreateTopping
    def initialize(repo: Repositories::Topping)
      @repo = repo
    end
    def run(topping:)
      @repo.create!(topping)
    end
  end
end
