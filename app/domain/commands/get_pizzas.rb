module Commands
  class GetPizzas
    class << self
      def run
        records = Pizza.all
        yield records  if block_given?
        return records
      end
    end
  end
end
