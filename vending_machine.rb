class VendingMachine
  # def initialize
  # end
  def self.pick
    true
  end

  def self.selected(drink)
    return drink
  end

  def self.menu
    "메뉴선택 1.cola 2.pokari 3.cider"
  end

  def self.inserted_coin(coin)
    coin
  end

  def self.return_coin
    true
  end
end
