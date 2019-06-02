
require 'test/unit' 

class VMTests < Test::Unit::TestCase
  def test_vm_overview
    vm = VM.new()
    user = User.new()
    deposit = user.input(Money.new(1000))

    # 자판기가 음료수 리스트를 보여준다.

    drink = user.pick()

    vm.inserted(deposit)
    vm.checked(drink)

    vm.output()
    vm.return_balance()
  end
end