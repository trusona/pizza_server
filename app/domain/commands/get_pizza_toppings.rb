module Commands
  class GetPizzaToppings
    class << self
      def run id:
        if block_given?
          yield(Commands::GetPizza.run(id: id).pizza_toppings)
        else
          Commands::GetPizza.run(id: id).pizza_toppings
        end
      end
    end
  end
end
