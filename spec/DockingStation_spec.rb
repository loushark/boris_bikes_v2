require 'DockingStation'

describe DockingStation do
  let(:test_dock1) { DockingStation.new('test_dock1', 20) }
  let(:test_bike1) { instance_double "Bike" }

  context 'when docking a bike' do
    it 'can dock a bike' do
      # expect(test_dock1).to respond_to :dock_bike
      expect(test_dock1.dock_bike(test_bike1)).to eq [test_bike1]
    end

    it 'can dock up to a capacity number of bikes' do
      test_dock1.capacity.times { test_dock1.dock_bike(test_bike1) }
      expect { test_dock1.dock_bike(test_bike1) }.to raise_error "Dock is at capacity. No more bikes can be docked"
    end
  end

  context 'when releasing a bike' do
    before do
      test_dock1.dock_bike(test_bike1)
    end

    it 'can release a bike' do
      allow(test_bike1).to receive(:working?).and_return true
      expect(test_dock1).to respond_to :release_bike
      expect(test_dock1.release_bike).to eq test_bike1
    end

    it 'cannot release a bike that is broken' do
      allow(test_bike1).to receive(:working?).and_return false
      expect { test_dock1.release_bike }.to raise_error "This bike is broken"
    end

    it 'is removed from the dock' do
      allow(test_bike1).to receive(:working?).and_return true
      expect(test_dock1.view_bikes).to eq [test_bike1]
      test_dock1.release_bike
      expect(test_dock1.view_bikes).to eq []
    end
  end

  context 'when dock is empty' do
    it 'cannot release a bike when empty' do
      expect { test_dock1.release_bike }.to raise_error "There are no bikes at this dock"
    end
  end

  it 'can check if a bike is working' do
    test_dock1.dock_bike(test_bike1)
    allow(test_bike1).to receive(:working?).and_return true
    expect(test_dock1.bike_working?).to eq true
  end
end
