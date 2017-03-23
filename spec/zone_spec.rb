require 'zone'

describe Zone do
  describe '#zones' do
    it 'gives correct output for station (test)' do
      expect(Zone.zones('Holborn')).to eq 1
    end
  end
end
