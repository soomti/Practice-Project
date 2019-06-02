class User
  attr_accessor :amount
  @drinks = []

  def initialize(amount)
    @amount = amount
  end

  # 자판기에 동전을 넣는다
  def input_amount_to_vm(money)
    @amount -= money
  end

  # 자판기가 잔돈을 반환한다.
  def output_balance_from_vm(money)
    @amount += money
  end

  # 음료수를 선택한다.
  def select_drink(drink)
    return 
  end

  # 음료수를 받는다.
  def pick_up_drink(drink)
    @drinks.push(drink)
  end
end