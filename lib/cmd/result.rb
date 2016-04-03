module Cmd
  class Result
    attr_accessor :result, :errors, :success
    def initialize(result:, errors:, success:)
      @result  = result
      @errors  = errors
      @success = success
    end

    def success
      yield result if errors.empty?
    end

    def failure
      yield errors unless errors.empty?
    end
  end
end
