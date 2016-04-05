module Repositories
  class Pizza < Base
    def self.create(attributes)
      Models::Pizza.new super
    end

    def self.read(id)
      Models::Pizza.new super
    end
  end
end
