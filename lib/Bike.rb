class Bike

  attr_reader :name, :working

  def initialize(name)
    @name = name
    @working = true
  end

  def self.create(name)
    @bike = Bike.new(name)
  end

  def self.instance
    @bike
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
