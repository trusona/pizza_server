module Commands
  class CreateTopping
    def initialize repo: Repositories::Topping
      @repo = repo
    end

    def call topping:
      @repo.create name: topping
    end
  end
end
