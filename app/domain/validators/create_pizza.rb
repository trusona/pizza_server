module Validators
  class CreatePizza
    include ActiveModel::Validations

    attr_accessor :name
    validates_presence_of :name

    def run(attributes)
      v  = self.class.new
      v.name = attributes['name']
      v.valid?
      v.errors.messages
    end
  end
end
