module Commands
  class ChangePrice
  	def initialize(repo: Repositories::Pizza)
  	  @repo = repo
  	end

  	def call pizza:, new_price:
  	  @repo.update(pizza.id, { price: new_price })
  	end
  end
end