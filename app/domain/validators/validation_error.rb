module Validators
  class ValidationError < RuntimeError
    attr_accessor :errors
    def initialize errors
      @errors = errors
    end
  end
end
