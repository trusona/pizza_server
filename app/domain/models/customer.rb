module Models
  class Customer
  	attr_reader :id, :first_name, :last_name
    
    def initialize attributes = {}
      @first_name = attributes['first_name']
      @last_name = attributes['last_name']
      @id = attributes['id']
    end

    def == customer
      @id == customer.id
    end
  end
end