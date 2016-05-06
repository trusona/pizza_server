module Commands
  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo
      @validator = validator.new
    end

    def call pizza:
      return @repo.create pizza if errors(pizza).empty?
      raise Validators::ValidationError.new errors(pizza)
    end

    private

    def errors pizza
      @validator.call pizza
    end
  end
end
