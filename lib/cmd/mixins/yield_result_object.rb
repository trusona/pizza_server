module Cmd
  module Mixins
    module YieldResultObject
      def self.included(base)
        base.class_eval { alias_method_chain :call, :yielding }
      end

      def call_with_yielding **args
        r = result(args)
        block_given? ? yield(Result.new(result: r, errors: [], success: true)) : r
      end

      def result(args)
        return call_without_yielding(args) if args.present?
        call_without_yielding
      end
    end
  end
end
