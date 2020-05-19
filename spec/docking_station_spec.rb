require 'docking_station'

describe DockingStation do

  let(:bike) { Bike.new }
  subject { DockingStation.new }

  describe '#initialize' do
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times { subject.dock bike }
      expect{ subject.dock bike }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases a bike' do
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error 'Docking station full'
    end
    it 'docks objects' do
      expect(subject.dock bike).to eq [bike]
    end
  end

end
