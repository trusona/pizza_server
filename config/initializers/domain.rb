module DomainFun
  def self.included(base)
    base.class_eval do
      alias_method :run_without_domain_fun, :run
      alias_method :run, :run_with_domain_fun
    end
  end

  def run_with_domain_fun pizza:
    if block_given?
      yield run_without_domain_fun(pizza: pizza)
    else
      run_without_domain_fun(pizza: pizza)
    end
  end
end


Commands::CreatePizza.send :include, DomainFun
