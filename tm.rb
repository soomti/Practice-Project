require './stadium'
class TicketMachine
  @@stadium = Stadium.new
  def self.start
    "1. 티켓예매 2. 예매확인 3. 예매취소 4. 예매출력"
  end
  def self.print
    "4. 예매 출력"
  end

  def self.ticket_info
    true
  end

  def reservation(menu)
    puts @@stadium.list
    "1. 티켓 예매 메뉴"
    menu
  end

  def reserve_select_seat(number)
  end

  def check_ticket
    puts "예매할 티켓 번호를 입력해주세요"
    number = gets.to_i
  end

  def self.search
    "2. 예매 확인"
  end

  def self.cancel
    "3. 예매 취소"
  end

  def self.get_number
    puts "번호를 입력해주세요"
    menu = gets.to_i
  end

  def self.menu_move(menu)
    case menu
      when 1 then reservation(menu)
      when 2 then search()
      when 3 then cancel()
      when 4 then print()
    end
    menu
  end

  def self.menu_validate_number(number)
    number = number.to_i
    result = false
    result = true if ((number.is_a? Integer) && (1..4).include?(number))
    result
  end
end
