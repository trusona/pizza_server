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

  def self.[] command_name
    Command.new(name: command_name, config: @config)
  end
end

require Rails.root.join('Cmdfile').to_s