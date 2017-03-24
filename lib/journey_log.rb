require_relative 'journey'

class JourneyLog
#should return a list of all previous journeys

  attr_reader :current_journey, :journeys

  def initialize
    @journeys = []
  end

  def start(entry_station)
    @current_journey = Journey.new(entry_station)
  end

  def finish(exit_station)
    @current_journey.end(exit_station)
  end

  def add_journey
    @journeys << current_journey.completed_journey
  end
  #
  # def completed_journey(entry_station, exit_station)
  #   {entry_station: entry_station, exit_station: exit_station}
  # end


end
