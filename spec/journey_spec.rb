require 'journey'

describe Journey do

  let(:entry_station) {double :station}
  let(:exit_station) {double :station}
  subject(:journey) {described_class.new}

  describe '#initialize' do
    it 'initializes entry station with nil' do
      expect(subject.entry_station).to be_nil
    end

    it 'initializes exit station with nil' do
      expect(subject.exit_station).to be_nil
    end
  end

  describe '#start' do
    it 'assigns an entry station' do
      journey.start(entry_station)
      expect(journey.entry_station).to eq entry_station
    end
  end

  describe '#end' do
    it 'assigns an exit station' do
      journey.end(exit_station)
      expect(journey.exit_station).to eq exit_station
    end
  end

  describe '#completed?' do
    it 'checks if the journey is completed' do
      journey.start(:entry_station)
      journey.end(:exit_station)
      expect(journey.completed?).to eq true
    end
  end

  describe '#fare' do
    it 'takes penalty fare if journey not completed' do
      journey.end(:exit_station)
    expect(subject.fare).to eq Journey::PENALTY_CHARGE
    end

    it 'takes the minimum payment if journey completed' do
      journey.start(:entry_station)
      journey.end(:exit_station)
      expect(subject.fare).to eq Journey::MINIMUM_CHARGE
    end
  end

  describe '#in_journey?' do
    it 'is initially not in a journey' do
      expect(subject).not_to be_in_journey
    end
  end
end
