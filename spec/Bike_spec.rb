require 'Bike'

describe Bike do
  let(:test_bike1) { Bike.new }

  it 'checks if it is working' do
    expect(test_bike1).to respond_to(:working?)
    expect(test_bike1.working?).to eq true
  end
end
