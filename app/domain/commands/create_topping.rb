module Commands
  class CreateTopping
    def initialize repo: Repositories::Topping
      @repo = repo.new
    end

    def run topping:
      @repo.create name: topping
    end
  end
end
