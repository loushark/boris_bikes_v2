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
    raise "There are no bikes at this dock" if @bikes.empty?
    raise "This bike is broken" if !is_bike_working?

    @bikes.delete_at(0)
  end

  def is_bike_working?
   @bikes[0].working?
 end

 def view_bikes
   @bikes
 end
end
