require_relative 'Bike'

class DockingStation

  def initialize
    @bikes = []
    @capacity = 20
  end

  def dock_bike(bike)
    raise "Dock is at capacity. No more bikes can be docked" if dock_full?
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
