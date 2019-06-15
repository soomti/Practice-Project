require 'rspec/autorun'
require './vending_machine'

class VMTests
  describe "음료수를 내보낸다." do
    it "음료수가 나왔다." do
      p expect(VendingMachine.pick).to be == true
      p expect(VendingMachine.pick).not_to be == false
    end 
  end 

  describe "음료수를 선택 받는다." do
    it "콜라를 선택 받았다." do
      p expect(VendingMachine.selected("cola")).to be == "cola"
      p expect(VendingMachine.selected("pokari")).not_to be == "cola"
    end 
  end 
end