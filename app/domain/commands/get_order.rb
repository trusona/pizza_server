module Commands
  class GetOrder
    def initialize repo: Repositories::Order
      @repo = repo
    end

    def call(id)
      @repo.read(id)
    end
  end
end