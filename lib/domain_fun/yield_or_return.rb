module DomainFun
  module YieldOrReturn
    def self.included(base)
      base.class_eval { alias_method_chain :call, :feature }
    end

    def call_with_feature **args
      block_given? ? yield(result(args)) : result(args)
    end

    def result(args)
      return call_without_feature(args) if (args.present?)
      call_without_feature
    end
  end
end
