module Commands
  class CreateTopping
    class << self
      def run(topping:)
        if block_given?
          yield(Topping.create!(topping))
        else
          Topping.create!(topping)
        end
      end
    end
  end
end
