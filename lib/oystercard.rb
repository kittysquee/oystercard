require_relative 'journey'
require_relative 'journey_log'

class Oystercard

  attr_reader :balance, :journey, :journeys, :journey_log

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @journeys = []
    @journey = Journey.new
    @journey_log = JourneyLog.new
  end

  def top_up(money)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if money + balance > MAXIMUM_BALANCE
    self.balance += money
  end

  def touch_in(station)
    fail 'Minimum £1 needed to touch in' if balance < MINIMUM_BALANCE
      journey_log.start(station)
  end

  def touch_out(exit_station)
    journeys << { journey.entry_station => exit_station }
    journey.end(exit_station)
    deduct_money(journey.fare)
  end

  private

  attr_writer :balance, :journey

  def deduct_money(money)
    self.balance -= money
  end

end
