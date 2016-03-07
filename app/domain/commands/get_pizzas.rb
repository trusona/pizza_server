module Commands
  class GetPizzas
    class << self
      def run
        records = Repositories::Pizza.all
        yield records  if block_given?
        return records
      end
    end
  end
end
