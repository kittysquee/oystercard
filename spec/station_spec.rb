require 'station'

describe Station do
  subject(:station) { described_class.new('Holborn') }

  describe '#initialize' do
    it 'returns a number when given a correct station' do
      expect(station.zone).to eq 1
    end
  end
end
