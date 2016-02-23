module Commands
  class GetPizzas
    class << self
      def run
        yield( Pizza.all )
      end
    end
  end
end
