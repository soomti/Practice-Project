require 'rspec/autorun'
require './tm'
class TicketMachineTest

  # test 1
  describe "예매 티켓을 출력한다." do
    it "티켓을 출력한다" do
      p expect(TicketMachine.print).to be == true
      p expect(TicketMachine.print).not_to be == false
    end 
  end 


end