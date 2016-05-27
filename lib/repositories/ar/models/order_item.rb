module Repositories
  module AR
    module Models	
      class OrderItem < ActiveRecord::Base
      	belongs_to :pizza
      	belongs_to :customer
      end
    end
  end
end
