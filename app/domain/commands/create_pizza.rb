module Commands
  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo.new
      @validator = validator.new
    end

    def call pizza:
      { result:  @repo.create(pizza),
        errors:  errors(pizza),
        success: errors(pizza).empty? }
    end

    private

    def errors pizza
      @validator.call(pizza)
    end
  end
end
