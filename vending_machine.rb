
class VendingMachine
  attr_accessor :deposit
  @drinks = {}

  def initialize()
    c = Drink.new("cola",1000)
    p = Drink.new("poka",1000)
    @drinks = {
      c.name => [c,c,c],
      p.name => [p,p,p]
    }
    @deposit = 0
  end
  def input_deposit(money)
    @deposit += money
  end

  def return_drink(drink)
    calculator_balance(drink)
    @drinks[drink.name].pop()
  end

  def calculator_balance(drink)
    @deposit -= drink.price
  end

  def return_balance
    puts "balance:#{@deposit}"
    @deposit
  end
end