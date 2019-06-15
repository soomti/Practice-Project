require 'rspec/autorun'
require './vending_machine'
require './coin'
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

  describe "콜라를 준비한다" do
    it "콜라는 콜라여야한다." do
      p expect(Drink.new("cola",1000).name).to be == Drink.new("cola",1000).name
      p expect(Drink.new("cola",1000).name).not_to be == Drink.new("poka",1000).name
    end
  end

  describe "음료 메뉴를 보여준다" do

    # it "모든 음료 리스트를 보여준다" do
    #   p expect(VendingMachine.drink_list).to be == "cola,poka,cider,pepsi,zico"
    # end

    # it "판매 가능한 음료 메뉴가 사용자에게 보여진다." do
    #   p expect(VendingMachine.menu()).to be == "메뉴선택 1.cola 2.pokari 3.cider"
    # end

    # it "음료 중 품절인 메뉴를 알려준다." do
    #   p expect(VendingMachine.check_drink()).to be == "품절 메뉴 1. pepsi, 2.zico"
    # end
  end

  describe "돈을 받는다." do
    before do
      @vending_machine = VendingMachine.new()
    end
    
    it "돈이 투입된다." do
      p expect(@vending_machine.inserted_coin(100)).to be == 100
      p expect(@vending_machine.inserted_coin(100)).not_to be == 110
    end
    
    it "돈이 숫자 단위로 들어와야된다." do
      p expect(@vending_machine.inserted_coin(100).is_a? Numeric).to be == true
      p expect(@vending_machine.inserted_coin(110).is_a? Numeric).not_to be == false
    end

    # VM 으로 빼야함!
    it "돈이 50,100,500 단위로 들어와야된다." do
      p expect(Coin.invalid(50)).to be == true
      p expect(Coin.invalid(100)).to be == true
      p expect(Coin.invalid(500)).to be == true
      p expect(Coin.invalid(110)).to be == false
    end

    it "투입된 금액이 쌓여야한다." do
      expect(@vending_machine.inserted_coin(100)).to be == 100
      expect(@vending_machine.inserted_coin(200)).to be == 300
    end
  end

  describe "돈을 반환된다." do
    before do
      @vending_machine = VendingMachine.new()
    end

    it "돈이 반환된다." do
      p expect(@vending_machine.return_coin()).to be == @vending_machine.amount
    end
  end

  describe "투입된 돈을 표시한다." do
    before do
      @vending_machine = VendingMachine.new()
      @vending_machine.inserted_coin(100)
    end

    it "표시한다" do
      p expect(@vending_machine.print_amount).to be == "투입된 금액: 100"
      p expect(@vending_machine.print_amount).not_to be == "투입된 금액: 110"
    end
  end
end