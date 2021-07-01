require_relative 'bike'

class DockingStation

  attr_reader :capacity
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity

  end
  

  def release_working_bike
    fail 'no bikes available' if empty?
    fail 'no working bikes available' if no_working_bikes?

    @bikes.pop
  end

  def release_broken_bike
    fail 'no bikes available' if empty?
    fail 'all available bikes are broken' if no_broken_bikes?
  end


  def dock(bike)
    fail "docking station is full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
  
end