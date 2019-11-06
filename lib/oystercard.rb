class Oystercard
MAX_BALANCE = 90

attr_accessor :balance
  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "Maximum balance of £ #{MAX_BALANCE} exceeded" if balance + amount > MAX_BALANCE
    @balance += amount
    # can use fail in the same way as raise
  end

  def deduct(amount)
    @balance -= amount
  end

end
