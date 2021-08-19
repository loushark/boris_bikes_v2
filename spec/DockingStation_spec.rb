require 'DockingStation'

describe DockingStation do
  let(:test_dock1) { DockingStation.new }
  let(:test_bike1) { double Bike }

  it 'can dock a bike' do
    expect(test_dock1).to respond_to :dock_bike
    expect(test_dock1.dock_bike(test_bike1)).to eq test_bike1
  end
end
