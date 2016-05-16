module Commands
  class CreateCustomer
  	def initialize repo: Repositories::Customer
  	  @repo = repo
  	end

  	def call customer:
  	  @repo.create customer
  	end
  end
end