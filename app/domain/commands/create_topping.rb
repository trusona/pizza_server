module Commands
  class CreateTopping
    def run(topping:)
      Topping.create!(topping)
    end
  end
end
