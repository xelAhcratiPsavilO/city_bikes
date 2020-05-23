require 'garage'
require 'support/shared_examples_for_bike_container'

describe Garage do

  it_behaves_like BikeContainer

  subject(:garage) { described_class.new }
  let(:bike) { double :bike }

  it 'fixes broken bikes' do
    garage.add_bike bike
    expect(bike).to receive :fix
    garage.fix_bikes
  end
end
