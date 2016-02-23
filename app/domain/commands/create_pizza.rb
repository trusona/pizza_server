module Commands
  class CreatePizza
    class << self
      def run pizza:
        yield(Pizza.create!(pizza))
      end
    end
  end
end
