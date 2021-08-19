require 'DockingStation'

describe DockingStation do
  let(:test_dock1) { DockingStation.new }
  let(:test_bike1) { instance_double "Bike" }

  before do
    test_dock1.dock_bike(test_bike1)
  end

  it 'can dock a bike' do
    expect(test_dock1).to respond_to :dock_bike
    expect(test_dock1.dock_bike(test_bike1)).to eq test_bike1
  end

  it 'can release a bike' do
    allow(test_bike1).to receive(:working?).and_return true
    expect(test_dock1).to respond_to :release_bike
    expect(test_dock1.release_bike).to eq test_bike1
  end

  it 'can check if a bike is working' do
    allow(test_bike1).to receive(:working?).and_return true
    expect(test_dock1.is_bike_working?).to eq true
  end

  it 'cannot release a bike that is broken' do
    allow(test_bike1).to receive(:working?).and_return false
    expect { test_dock1.release_bike }.to raise_error "This bike is broken"
  end

end
