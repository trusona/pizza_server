module Commands
  class CreateCustomer
  	def call customer:
  	  Repositories::Customer.create customer
  	end
  end
end