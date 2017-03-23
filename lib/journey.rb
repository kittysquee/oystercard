class Journey
  #responsible for calculating the fare based on journey

  attr_reader :entry_station, :exit_station, :fare

  PENALTY_CHARGE = 6
  MINIMUM_CHARGE = 1

  def initialize
    @entry_station = nil
    @exit_station = nil
  end

  def start(station)
    self.entry_station = station
  end

  def end(station)
    self.exit_station = station
  end

  def completed?
    has_entry_station && has_exit_station
  end

  def fare
    completed? ? MINIMUM_CHARGE : PENALTY_CHARGE
  end

  def in_journey?
    has_entry_station
  end

  private

  attr_writer :entry_station, :exit_station, :completed

  def has_entry_station
    entry_station != nil
  end

  def has_exit_station
    exit_station != nil
  end

end
