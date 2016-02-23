module Commands
  class CreateTopping
    class << self
      def run(topping:)
        yield(Topping.create!(topping))
      end
    end
  end
end
