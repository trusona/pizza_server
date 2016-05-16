module Validators
  class CreatePizza
    include ActiveModel::Validations

    attr_accessor :name, :price
    validates_presence_of :name
    validates_presence_of :price

    def call attributes
      v = self.class.new
      
      v.name  = attributes['name']
      v.price = attributes['price']
      
      v.valid?
      v.errors.messages
    end
  end
end
