class Oystercard
MAX_BALANCE = 90
MIN_BALANCE = 1
FARE = 5
attr_accessor :balance
attr_reader :entry_station, :exit_station, :history, :journey

  def initialize
    @balance = 0
    @journey = Hash.new
    @history = []
  end

  def top_up(amount)
    raise "Maximum balance of £ #{MAX_BALANCE} exceeded" if balance + amount > MAX_BALANCE
    @balance += amount
    # can use fail in the same way as raise
  end

  def touch_in(entry_station)
    @balance
    raise "Minimun balance of #{MIN_BALANCE} required!" if balance < MIN_BALANCE
    #@in_use = true
    @entry_station = entry_station
    @journey[:entry] = entry_station

  end

# need to think about this @in_use
  def in_journey?
    #@in_use
    @entry_station != nil
  end

  def touch_out(exit_station)
    @entry_station = nil
    @exit_station = exit_station
    @journey[:exit] = exit_station
    @history << @journey
    fare = FARE
    deduct(fare)
    #@in_use = false
  end

  private

  def deduct(fare)
    @balance -= fare
  end


end
