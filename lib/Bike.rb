class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def report_broken
    @working = false
  end

  def report_fixed
    @working = true
  end
end
