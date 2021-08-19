require 'Bike'

class DockingStation

  def initialize
    @bikes = []
    @capacity = 20
  end

  def dock_bike(bike)
    raise "Dock is at capacity. No more bikes can be docked" if @bikes.length == @capacity
    @bikes << bike
  end

  def release_bike
    raise "This bike is broken" if !is_bike_working?
    @bikes[0]
  end

  def is_bike_working?
   @bikes[0].working?
 end
end
