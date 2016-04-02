module Commands
  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo.new
      @validator = validator.new
    end

    def call pizza:
      if errors(pizza).empty?
        @repo.create(pizza)
      else
        raise Validators::ValidationError.new(errors(pizza))
      end
    end

    private

    def errors pizza
      @validator.call(pizza)
    end
  end
end
