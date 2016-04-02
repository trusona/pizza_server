module Commands
  class ValidationError < RuntimeError
    attr_accessor :errors
    def initialize(errors)
      @errors = errors
    end
  end

  class CreatePizza
    def initialize repo: Repositories::Pizza, validator: Validators::CreatePizza
      @repo      = repo.new
      @validator = validator.new
    end

    def call pizza:
      raise Commands::ValidationError.new(errors(pizza)) unless errors(pizza).empty?
      @repo.create(pizza)
    end

    private

    def errors pizza
      @validator.call(pizza)
    end
  end
end
