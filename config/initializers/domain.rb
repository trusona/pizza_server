module DomainFun
  def self.included(base)
    base.class_eval do
      alias_method :run_without_domain_fun, :run
      alias_method :run, :run_with_domain_fun
    end
  end

  def run_with_domain_fun **args
    if block_given?
      yield run_without_domain_fun(args)
    else
      run_without_domain_fun(args)
    end
  end
end

Commands::CreatePizza.send        :include, DomainFun
Commands::CreatePizzaTopping.send :include, DomainFun
Commands::CreateTopping.send      :include, DomainFun
Commands::GetPizza.send           :include, DomainFun
