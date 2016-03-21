module Commands
  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo.new
      @validator = validator.new
    end

    def run pizza:
      {
        result:  @repo.create(pizza),
        errors:  errors(pizza),
        success: errors(pizza).empty?
      }
    end

    private

    def errors pizza
      @validator.run(pizza)
    end
  end
end
