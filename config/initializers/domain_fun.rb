[ Commands::CreatePizza,
  Commands::CreatePizzaTopping,
  Commands::CreateTopping,
  Commands::GetPizza,
  Commands::GetPizzaToppings,
  Commands::GetPizzas,
  Commands::GetToppings
].each do |klass|
  klass.send :include, DomainFun::YieldOrReturn
end
