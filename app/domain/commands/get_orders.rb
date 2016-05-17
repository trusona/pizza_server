module Commands
  class GetOrders
    def initialize repo: Repositories::Order
      @repo = repo
    end

    def call
      @repo.list
    end
  end
end