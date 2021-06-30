require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "doesnt exist" if @bike == nil
    Bike.new
  end


  def dock(bike)
    @bike = bike
  end
end