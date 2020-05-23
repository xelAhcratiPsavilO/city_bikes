require 'van'
require 'support/shared_examples_for_bike_container'

describe Van do

  it_behaves_like BikeContainer

  let(:bike) { double :bike, broken?: false }
  let(:broken_bike) { double :bike, broken?: true }
  let(:station) { double :docking_station }
  let(:garage) { double :garage }

  it 'takes broken bikes from stations to garages' do

  end

  it 'takes working bikes from garages to stations' do

  end

end
