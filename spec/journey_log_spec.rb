require 'journey_log'

describe JourneyLog do

  subject (:journey_log) {described_class.new}
  let (:journey) {double(:journey)}

  describe '#initialize' do
    it 'initializes with a journey' do
      expect(journey_log).to respond_to(:journey)
    end

    it 'initalizes with journeys' do
      expect(journey_log).to respond_to(:journeys)
    end

    it 'initalizes journeys as an empty data structure' do
      expect(journey_log.journeys).to be_empty
    end

  end




end
