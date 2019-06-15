require './drink'
require './drink_container'
class VendingMachine
  attr_accessor :amount

  def initialize
    @amount = 0
    @drinks = DrinkContainer.new()
  end

  def insert_drink(drink)
    @drinks.input_drink(drink)
    true
  end

  def self.pick
    true
  end

  def drink_list
    puts @drinks.key
  end

  def self.selected(drink)
    return drink
  end

  def self.menu
    "메뉴선택 1.cola 2.pokari 3.cider"
  end

  def print_amount
    "투입된 금액: #{@amount}"
  end

  def inserted_coin(coin)
    @amount += coin
  end

  def return_coin
    @amount
  end

  def +(other)
    @amount += other
  end
end
