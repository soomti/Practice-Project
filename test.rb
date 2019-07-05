require 'rspec/autorun'
require './tm'
class TicketMachineTest
  # test 1
  describe "예매 티켓을 출력한다." do
    it "티켓을 출력한다" do
      puts "test1"
      expect(TicketMachine.ticket_info).to be == true
      expect(TicketMachine.ticket_info).not_to be == false
    end
  end

  # test 2
  describe "티켓 메뉴를 시작한다" do
    puts "test2"
    it "메뉴를 안내한다" do
      expect(TicketMachine.start).to be == "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
    end
  end

  describe "숫자를 입력받는다" do
    before do
      @TM = TicketMachine.get_number
    end
    # test 3
    it "숫자 입력" do
      puts "test 3"
      expect(@TM.nil?).to be == false
      expect(@TM.nil?).not_to be == true
    end
    # test 4
    it "숫자만 입력 받아야 한다" do
      puts "test4"
      expect(@TM.is_a? Integer).to be == true
      expect(@TM.is_a? Integer).not_to be == false
    end
  end

  describe "메뉴를 입력 받는다" do 
    it "메뉴 숫자는 4 이하여야 한다" do
      expect(TicketMachine.menu_validate_number(1)).to be == true
      expect(TicketMachine.menu_validate_number(5)).to be == false
    end
    it "메뉴 입력시 해당 메뉴로 이동한다" do
      expect(TicketMachine.menu_move(1)).to_be == "1. 티켓 예매 메뉴"
      expect(TicketMachine.menu_move(2)).to_be =="2. 예매 확인 메뉴"
      expect(TicketMachine.menu_move(3)).to_be =="3. 예매 취소 메뉴"
      expect(TicketMachine.menu_move(4)).to_be =="4. 예매 출력 메뉴"
    end
  end

  # describe "1. 티켓을 예매한다. " do
  #   it " - 예매 안내" do
  #   end
  #   it " - 예매 좌석 선택" do
  #   end
  # end
end