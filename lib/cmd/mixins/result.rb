module Cmd
  module Mixins
    class Result
      attr_accessor :result, :errors, :success
      def initialize(result:, errors:, success:)
        @result = result
        @errors = errors
        @success = success
      end

      def success
        return unless errors.empty?
        yield result
      end

      def failure
        return if errors.empty?
        yield errors
      end
    end
  end
end
