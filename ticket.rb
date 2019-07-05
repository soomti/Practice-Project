class Ticket
  attr_accessor :ticket_number, :phone, :seat
  def initialize(phone, seat)
    @seat = seat
    @phone = phone
    @ticket_number = ('a'..'z').to_a.shuffle[0,8].join
  end
end