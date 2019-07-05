
class Seat
  attr_accessor :lat, :lon, :is_sell
	
	def initialize(lat, lon)
		@lat = lat
		@lon = lon
		@is_sell = false
	end
end
