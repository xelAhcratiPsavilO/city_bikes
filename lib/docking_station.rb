require_relative 'bike_container'

class DockingStation
  include BikeContainer

    def release_bike
      fail 'No bikes available' if working_bikes.empty?
      bikes.delete working_bikes.pop
    end

    def dock(bike)
      add_bike bike
    end
end
