module Commands
  class CreatePizza

    def run pizza:
      Pizza.create!(pizza)
    end

  end
end
