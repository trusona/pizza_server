module Commands
  class GetPizza
    class << self
      def run name:
        yield(Pizza.find_by_name(name))
      end
    end
  end
end
