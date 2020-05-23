require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  subject(:docking_station) { described_class.new }
  let(:bike) { double :bike, broken?: false }
  let(:broken_bike) { double :bike, broken?: true }

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { docking_station.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases a bike' do
      docking_station.dock bike
      expect(docking_station.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'docks working bikes' do
      expect(docking_station.dock bike).to eq [bike]
    end
    it 'docks broken bikes' do
      expect(docking_station.dock broken_bike).to eq [broken_bike]
    end
  end

end
