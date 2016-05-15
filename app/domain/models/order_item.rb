module Models
	class OrderItem
		attr_accessor :pizza, :price, :quantity
		def initialize(pizza:, quantity:)
			@pizza 		= pizza
			@price 		= pizza.price
			@quantity = quantity
		end

		def total_price
			price * quantity
		end
	end
end