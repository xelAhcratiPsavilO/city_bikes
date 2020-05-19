require 'bike'

describe Bike do

  it 'works' do
    expect(subject).to be_working
  end

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

end
