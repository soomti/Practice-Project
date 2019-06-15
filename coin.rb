class Coin
  def self.invalid(coin)
    case coin
    when 50, 100, 500 then true
    else false
    end
  end
end