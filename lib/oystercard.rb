class Oystercard
MAX_BALANCE = 90
MIN_BALANCE = 1

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

  def touch_in
    @balance
    raise "Minimun balance of #{MIN_BALANCE} required!" if balance < MIN_BALANCE
    @in_use = true
  end

  def in_journey?
    @in_use

  end

  def touch_out
    @in_use = false
  end

end
