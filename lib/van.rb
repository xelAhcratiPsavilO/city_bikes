require_relative 'bike_container'

class Van
  include BikeContainer

  def take_broken_bikes_from(station, garage)
		station.broken_bikes.each do |broken_bike|
      garage.bikes << broken_bike
    	station.bikes.delete broken_bike
    end
	end

  def take_working_bikes_from(garage, station)
		garage.working_bikes.each do |working_bike|
      station.bikes << working_bike
    	garage.bikes.delete working_bike
    end
	end
end
