require 'journey'

describe Journey do

  let(:station) {double :station}

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
      subject.start(station)
      expect(subject.entry_station).to eq station
    end
  end

  describe '#end' do
    it 'assigns an exit station' do
      subject.end(station)
      expect(subject.exit_station).to eq station
    end
  end

end
