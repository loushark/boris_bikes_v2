require 'Bike'

class DockingStation

  def dock_bike(bike)
    @bike = bike
  end

  def release_bike
    raise "This bike is broken" if !is_bike_working?
    @bike
  end

  def is_bike_working?
   @bike.working?
 end
end
