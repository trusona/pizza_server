module Commands
  class CreateOrder
  	def initialize repo: Repositories::Order
  	  @repo = repo
  	end

  	def call order:
  	  @repo.create order
  	end
  end
end