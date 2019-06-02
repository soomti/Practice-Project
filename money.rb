class Money
  attr_accessor :value
  MONEY_TYPE = [:_50, :_100, :_500, :_1000, :_5000]
  def initialize(money)
    money_valid("_"+money.to_s) ? @value = money : puts("잘못 된 화폐입니다!")
  end

  def money_valid(value)
    MONEY_TYPE.include?(value.to_sym)
  end
end