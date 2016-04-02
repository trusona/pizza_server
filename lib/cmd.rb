# Do this:
#   Cmd.config do |config|
#     config.load_commands :create_pizza, repository: Repositories::AR::Pizza
#   end
#
#   Cmd[:create_pizza].call(pizza: pizza_params)
#
# Instead of this:
#   Commands::CreatePizza.new(Repositories::AR::CreatePizza).call(pizza: pizza_params)

module Cmd
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
