module Commands
  class GetPizza
    class << self
      def run id:
        if block_given?
          yield(Pizza.find(id))
        else
          Pizza.find(id)
        end
      end
    end
  end
end
