class Journey

  attr_reader :entry_station, :exit_station

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

  private

  attr_writer :entry_station, :exit_station

end
