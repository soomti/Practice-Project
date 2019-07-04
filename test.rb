require 'rspec/autorun'
require './tm'
class TicketMachineTest

  # test 1
  describe "예매 티켓을 출력한다." do
    it "티켓을 출력한다" do
      expect(TicketMachine.print).to be == true
      expect(TicketMachine.print).not_to be == false
    end 
  end 

  # test 2
  describe "티켓 메뉴를 시작한다" do
    it "메뉴를 안내한다" do
      expect(TicketMachine.start).to be == "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
    end
  end
end