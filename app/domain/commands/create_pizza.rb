module Commands
  class CreatePizza
    class << self
      def run pizza:
        record = Pizza.create!(pizza)
        yield(record) if block_given?
        return record
      end
    end
  end
end
