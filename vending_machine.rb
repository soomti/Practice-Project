class VendingMachine
  attr_accessor :amount

  def initialize
    @amount = 0
  end

  def self.pick
    true
  end

  def self.selected(drink)
    return drink
  end

  def self.menu
    "메뉴선택 1.cola 2.pokari 3.cider"
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
