# Controller
# Command Result {result:, errors:, success}
# Validator
# Domain Repository
#
# init/domain_fun
# Swap databases
# AR Repository
# CouchDB Repository

# Do this:
#   DomainFun[:create_pizza].run(pizza: pizza_params)
# Instead of this:
#   Commands::CreatePizza.new(Repositories::AR::CreatePizza).run(pizza: pizza_params)

module DomainFun
  @config = Config.new

  def self.config
    yield @config
  end

  def self.[] value
    command(value).new(repo: @config.commands[value][:repository])
  end

  def self.command(value)
    "Commands::#{value.to_s.camelize}".constantize
  end
end
