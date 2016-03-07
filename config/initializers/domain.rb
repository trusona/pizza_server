module DomainFun
  def self.included(base)
    base.class_eval do
      alias_method :run_without_domain_fun, :run
      alias_method :run, :run_with_domain_fun
    end
  end

  def run_with_domain_fun **args
    if block_given?
      if(args.present?)
        yield run_without_domain_fun(args)
      else
        yield run_without_domain_fun
      end
    else
      if(args.present?)
        run_without_domain_fun(args)
      else
        run_without_domain_fun
      end
    end
  end
end

Commands::CreatePizza.send        :include, DomainFun
Commands::CreatePizzaTopping.send :include, DomainFun
Commands::CreateTopping.send      :include, DomainFun
Commands::GetPizza.send           :include, DomainFun
Commands::GetPizzaToppings.send   :include, DomainFun
Commands::GetPizzas.send          :include, DomainFun
Commands::GetToppings.send        :include, DomainFun
