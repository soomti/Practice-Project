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

  describe "음료 메뉴를 보여준다" do
    it "음료 메뉴가 사용자에게 보여진다." do
      p expect(VendingMachine.menu()).to be == "메뉴선택 1.cola 2.pokari 3.cider"
      p expect(VendingMachine.menu()).not_to be == ""
    end
  end

  describe "돈을 받는다." do
    it "돈이 투입된다." do
      p expect(VendingMachine.inserted_coin()).to be == true
      p expect(VendingMachine.inserted_coin()).not_to be == false
    end
  end

  
end