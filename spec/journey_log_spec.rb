require 'journey_log'

describe JourneyLog do

  subject (:journey_log) {described_class.new}
  let (:current_journey) {double(:current_journey)}
  let (:exit_station) {double(:exit_station)}
  let (:entry_station) {double(:entry_station)}
  let (:finished_journey_hash) { { entry_station: entry_station, exit_station: exit_station } }

  describe '#initialize' do
    it 'initializes with a journey' do
      expect(journey_log).to respond_to(:current_journey)
    end

    it 'initalizes with journeys' do
      expect(journey_log).to respond_to(:journeys)
    end

    it 'initalizes journeys as an empty data structure' do
      expect(journey_log.journeys).to be_empty
    end

  end

  describe '#start' do
    it "has a start method" do
      expect(journey_log).to respond_to(:start).with(1).argument
    end
  end

  describe '#finish' do
    it 'takes one argument' do
      expect(journey_log).to respond_to(:finish).with(1).argument
    end

    it 'expect current_journey to receive #end with station argument' do
      expect(journey_log.current_journey).to receive(:end)
      journey_log.finish(exit_station)
    end
  end
  describe '#add_journey' do

    it 'pushes something into the journeys array' do
      expect(journey_log.current_journey).to receive(:completed_journey)
      journey_log.add_journey
      expect(journey_log.journeys).not_to be_empty
    end

    it 'pushes something into the journey' do
      expect(journey_log.current_journey).to receive(:completed_journey)
      journey_log.add_journey
      expect(journey_log.journeys.count).to eq(1)
    end
  end
end
