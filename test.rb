
require 'test/unit' 

class VMTests < Test::Unit::TestCase
  def test_vm_overview
    vm = VM.new()
    user = User.new("10000")
    deposit = user.input_amount_to_vm(Money.new(100))
    
    # 자판기가 음료수 리스트를 보여준다.
    drink = user.select_drink("cola")

    vm.inserted(deposit)
    vm.checked(drink)

    user.pick_up_drink = vm.output()
    vm.return_balance()
  end
end