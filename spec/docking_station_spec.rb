require 'docking_station'

describe DockingStation do

  subject { DockingStation.new }
  let(:bike) { Bike.new }
  let(:faulty_bike) { Bike.new }

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
    it 'raises an error when the bike is open' do
      faulty_bike.report_broken
      subject.dock faulty_bike
      expect { subject.release_bike }.to raise_error 'This bike is broken'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error 'Docking station full'
    end
    it 'docks working bikes' do
      expect(subject.dock bike).to eq [bike]
    end
    it 'docks broken bikes' do
      faulty_bike.report_broken
      expect(subject.dock faulty_bike).to eq [faulty_bike]
    end
  end

end
