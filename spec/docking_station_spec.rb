require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  subject { DockingStation.new }

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases a bike' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'docks working bikes' do
      bike = double(:bike)
      expect(subject.dock bike).to eq [bike]
    end
    it 'docks broken bikes' do
      faulty_bike = double(:bike, broken?: true)
      expect(subject.dock faulty_bike).to eq [faulty_bike]
    end
  end

end
