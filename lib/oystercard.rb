class Oystercard
MAX_BALANCE = 90

attr_accessor :balance
  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount

  end


end
