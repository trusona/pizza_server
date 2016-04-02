module Commands
  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo.new
      @validator = validator.new
    end

    def call pizza:
      raise Validators::ValidationError.new(errors(pizza)) if !errors(pizza).empty?
      @repo.create(pizza)
    end

    private

    def errors pizza
      @validator.call(pizza)
    end
  end
end
