module Commands
  class CreateTopping
    def initialize repo: Repositories::Topping
      @repo = repo
    end

    def call topping:
      @repo.create topping
    end
  end
end
