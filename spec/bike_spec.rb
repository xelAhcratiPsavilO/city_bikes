require 'bike'

describe Bike do

  subject(:bike) { described_class.new }

  it 'works' do
    expect(bike).not_to be_broken
  end

  it 'can be reported broken' do
    bike.report_broken
    expect(bike).to be_broken
  end

  it 'can be fixed' do
    bike.report_broken
    bike.fix
    expect(bike).not_to be_broken
  end

end
