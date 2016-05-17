module Commands
  class GetCustomers
    def initialize repo: Repositories::Customer
      @repo = repo
    end

    def call
      @repo.list
    end
  end
end