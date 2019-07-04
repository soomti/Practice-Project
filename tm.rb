class TicketMachine
  def self.start
    "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
  end
  def self.print
    true
    # "티켓이 성공적으로 출력되었습니다."
  end

  def self.get_menu
    puts "번호를 입력해주세요"
    menu = gets.to_i
    if get_menu_validate(menu)
      puts "번호를 다시 입력해주세요"
      get_menu()
    else
      menu
    end
  end

  def self.get_menu_validate(menu)
    result = true
    result = false if (menu.is_a? Integer) && ((1..4).include?(menu))
    result
  end
end
