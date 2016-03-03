module Commands
  class GetPizza
    def run id:
      Pizza.find(id)
    end
  end
end
