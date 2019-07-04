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

  describe "메뉴를 선택한다" do
    before do
      @TM = TicketMachine.get_menu
    end

    # test 3
    it "메뉴 입력" do
      puts "test 3"
      expect(@TM.nil?).to be == false
      expect(@TM.nil?).not_to be == true
    end
    # test 4
    it "메뉴 숫자만 입력 받아야 한다" do
      puts "test4"
      expect(@TM.is_a? Integer).to be == true
      expect(@TM.is_a? Integer).not_to be == false
    end

    it "메뉴 숫자는 4 이하여야 한다" do
      expect((1..4).include?(@TM)).to be == true
    end

    it "메뉴 입력시 해당 메뉴로 이동한다" do
      case @TM
      when 1 then "1. 티켓 예매 메뉴"
      when 2 then "2. 예매 확인 메뉴"
      when 3 then "3. 예매 취소 메뉴"
      when 4 then "4. 예매 출력 메뉴"
      end
    end
  end
end