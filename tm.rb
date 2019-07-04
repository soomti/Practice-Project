class TicketMachine
  def self.start
    "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
  end
  def self.print
    true
    # "티켓이 성공적으로 출력되었습니다."
  end

  def self.get_menu
    menu = gets.chomp
    menu
  end
end