require './seat'
class Stadium
  attr_accessor :seats
  def initialize
    @seats = [ Seat.new(1,1),
               Seat.new(1,2),
               Seat.new(1,3),
               Seat.new(1,4),
               Seat.new(1,5),
               Seat.new(1,6),
               Seat.new(1,7),
               Seat.new(1,8),
               Seat.new(1,9)]
  end

  def list
    puts "좌석 정보입니다."
    @seats.each do |seat|
      putc "#{seat.lon}"
      putc " "
      puts is_sell(seat.is_sell)
      putc "||||||"
    end
    true
  end

  def is_sell(seat)
    result = seat ? "X" : "O"
    result
  end
end