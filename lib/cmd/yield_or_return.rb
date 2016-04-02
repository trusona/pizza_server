module Cmd
  module YieldOrReturn
    def self.included(base)
      base.class_eval { alias_method_chain :call, :feature }
    end

    def call_with_feature **args
      r = result(args)
      block_given? ? yield(Result.new(result: r, errors: [], success: true)) : r
    end

    def result(args)
      return call_without_feature(args) if args.present?
      call_without_feature
    end
  end
end
