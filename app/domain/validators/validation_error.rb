module Validators
  class ValidationError < RuntimeError
    attr_accessor :errors
    def initialize errors
      @errors = errors
    end

    def to_s
      'poo'
    end
  end
end
