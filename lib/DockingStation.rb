require_relative 'Bike'

class DockingStation

  attr_reader :name, :capacity, :bikes

  def initialize(name, capacity)
    @name = name
    @bikes = []
    @capacity = capacity
  end

  def self.create(name, capacity)
    @dock = DockingStation.new(name, capacity)
  end

  def self.instance
    @dock
  end

  def dock_bike(bike)
    raise CapacityError.new() if dock_full?
    add_bike_to_dock(bike)
  end

  def release_bike
    raise "There are no bikes at this dock" if dock_empty?
    raise "This bike is broken" if !bike_working?

    remove_bike_from_dock
  end

  def view_bikes
    @bikes
  end

  def bike_working?
    @bikes[0].working?
  end


  private

  def dock_full?
    @bikes.length == @capacity
  end

  def dock_empty?
    @bikes.length == 0
  end

  def add_bike_to_dock(bike)
    @bikes << bike
  end

  def remove_bike_from_dock
    @bikes.delete_at(0)
  end
end
