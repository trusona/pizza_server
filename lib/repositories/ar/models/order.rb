module Repositories
  module AR
    module Models	
      class Order < ActiveRecord::Base
        has_many   :items, class_name: "Repositories::AR::Models::OrderItem"
        belongs_to :customer, class_name: "Repositories::AR::Models::Customer"
      end
    end
  end
end
