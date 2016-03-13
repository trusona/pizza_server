[ Commands::CreatePizza,
  Commands::CreateTopping,
  Commands::GetPizza,
  Commands::GetPizzas,
  Commands::GetToppings
].each do |klass|
  klass.send :include, DomainFun::YieldOrReturn
end
