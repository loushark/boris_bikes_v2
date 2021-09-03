class CapacityError < StandardError
  def initialize(message="Dock is at capacity. No more bikes can be docked")
    super
  end
end
