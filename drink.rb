class Drink
  attr_accessor :name, :price
  def initialize(name, price)
    @name, price = name, price
  end

  def valid_drink
    self.name == @name && self.price == @price
  end
end