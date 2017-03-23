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
    entry_station != nil && exit_station != nil
  end

  def fare
    completed? ? MINIMUM_CHARGE : PENALTY_CHARGE
  end

  


  private

  attr_writer :entry_station, :exit_station, :completed

end
