shared_examples_for BikeContainer do

  subject(:bike_container) { described_class.new }
  let(:bike) { double :bike, broken?: false }

  describe 'capacity' do
    it 'has a default capacity when initialized' do
      expect(bike_container.capacity).to eq BikeContainer::DEFAULT_CAPACITY
    end
    it 'can be overridden on initialize' do
      random_capacity = Random.rand(100)
      bike_container = described_class.new random_capacity
      expect(bike_container.capacity).to eq random_capacity
    end
  end

  describe 'add_bike' do
    it 'receives a bike' do
      bike_container.add_bike bike
      expect(bike_container).not_to be_empty
    end
    it 'raises an error when full' do
      bike_container.capacity.times { bike_container.add_bike double(:bike) }
      expect { bike_container.add_bike double(:bike) }.to raise_error "#{described_class.name} full"
    end
  end

  describe 'remove_bike' do
    before(:each) { bike_container.add_bike bike }

    it 'returns a bike' do
      expect(bike_container.remove_bike).to eq bike
    end

    it 'removes the bike from the collection' do
      bike_container.remove_bike
      expect(bike_container).to be_empty
    end

    it 'raises an error when empty' do
      bike_container.remove_bike
      expect { bike_container.remove_bike }.to raise_error "#{described_class.name} empty"
    end
  end

end
