class TicketMachine
  def self.start
    "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
  end
  def self.print
    "4. 예매 출력"
  end

  def self.ticket_info
    true
  end
  def self.reserve
    "1. 티켓 예매"
  end

  def self.search
    "2. 예매 확인"
  end

  def self.cancel
    "3. 예매 취소"
  end

  def self.get_menu
    puts "번호를 입력해주세요"
    menu = gets.to_i
    if get_menu_validate(menu)
      puts "번호를 다시 입력해주세요"
      get_menu()
    else
      case menu
        when 1 then reserve()
        when 2 then search()
        when 3 then cancel()
        when 4 then print()
      end
    end
    menu
  end

  def self.get_menu_validate(menu)
    result = true
    result = false if (menu.is_a? Integer) && ((1..4).include?(menu))
    result
  end
end
