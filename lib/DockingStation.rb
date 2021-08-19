require 'Bike'

class DockingStation

  def dock_bike(bike)
    @bike = bike
  end

  def release_bike
    @bike
  end

  def is_bike_working?
    @bike.working?
  end
end
