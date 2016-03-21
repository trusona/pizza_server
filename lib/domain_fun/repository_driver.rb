module DomainFun
  class RepositoryDriver
    def initialize(type)
      @type = "Repositories::#{type}"
    end

    def repository
      "#{@type}::Pizza".constantize
    end
  end
end
