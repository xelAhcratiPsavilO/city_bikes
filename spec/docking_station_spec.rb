require 'docking_station'

describe DockingStation do

  bike = Bike.new
  bike2 = Bike.new

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(bike)
      expect { subject.dock bike2 }.to raise_error 'Docking station full'
    end
    it 'docks objects' do
      expect(subject.dock(bike)).to eq bike
    end
  end

  describe '#bike' do
    it 'returns docked bikes' do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end

end
