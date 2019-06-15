class DrinkContainer
  attr_accessor :drinks

  def initialize()
    @drinks = {}
  end

  def is_drink_include?(name)
    @drinks.include?(name)
  end

  def input_drink(drink)
    unless is_drink_include?(drink.name)
      @drinks[drink.name] = []
    end
    @drinks[drink.name].push(drink)
  end
end