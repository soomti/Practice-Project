
require 'test/unit' 
require './vending_machine'
require './user'
require './money'
require './drink'

class VMTests < Test::Unit::TestCase
  def test_vm_overview
    vm = VendingMachine.new()
    user = User.new(Money.new(10000))
    deposit = user.input_amount_to_vm(Money.new(100))

    vm.input_deposit(deposit)

    # 자판기가 음료수 리스트를 보여준다.
    drink = user.select_drink(Drink.new("cola",1000))

    user.pick_up_drink(vm.return_drink(drink))

    user.output_balance_from_vm(vm.return_balance())
  end
end