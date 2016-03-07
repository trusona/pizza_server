module Repositories
  class Pizza < ActiveRecord::Base
    has_many :pizza_toppings
  end
end
