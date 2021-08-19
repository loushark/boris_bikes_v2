require 'Bike'

describe Bike do
  let(:test_bike1) { Bike.new }

  it 'checks if it is working' do
    expect(test_bike1).to respond_to(:working?)
    expect(test_bike1.working?).to eq true
  end

  it 'can be reported as broken' do
    expect(test_bike1).to respond_to(:report_broken)
    expect(test_bike1.report_broken).to eq false
  end

  it 'can be reported as fixed' do
    expect(test_bike1).to respond_to(:report_fixed)
    expect(test_bike1.report_fixed).to eq true
  end
end
