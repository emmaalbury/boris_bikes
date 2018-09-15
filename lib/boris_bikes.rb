require_relative "bike"

class DockingStation

  #attr_reader :bike
  attr_reader :docked_bikes

  def initialize
#    @docked_bikes = []
  end

  def dock(bike)
    raise "Dock full" if @docked_bikes
    @docked_bikes = bike
  end
  # def bike
  #   @bike
  # end

  def release_bike
    raise "No bikes available" if !@docked_bikes
    Bike.new
  end
end
