require 'bike'

describe Bike do

  it 'works' do
    expect(subject).not_to be_broken
  end

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'can be fixed' do
    subject.report_broken
    subject.fix
    expect(subject).not_to be_broken
  end

end
