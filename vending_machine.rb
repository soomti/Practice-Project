require './money_type'
class VendingMachine
  include MONEY_TYPE
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
    puts "투입 금액 #{@deposit}"
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


  def balance_calculate
    result = {}
    MONEY_TYPE.money_list.each do |money|
      result[MONEY_TYPE.money_selector_string(money)] =  @deposit / MONEY_TYPE.money_selector(money)
      @deposit %= MONEY_TYPE.money_selector(money)
    end
    
    msg = "반환 금액"
    result.each do |money, qty|
      msg += "#{money}:#{qty}" unless qty == 0
    end

    puts msg
  end
end