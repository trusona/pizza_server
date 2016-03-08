module DomainFun
  module YieldOrReturn
    def self.included(base)
      base.class_eval { alias_method_chain :run, :feature }
    end

    def run_with_feature **args
      block_given? ? yield(result(args)) : result(args)
    end

    def result(args)
      return run_without_feature(args) if (args.present?)
      run_without_feature
    end
  end
end
