if __FILE__ == $0

  require './lib/bike'
  require './lib/docking_station'
  require './lib/van'
  require './lib/garage'

  station = DockingStation.new
  bike_a = Bike.new
  bike_b = Bike.new
  garage = Garage.new
  van = Van.new

  bike_b.report_broken
  station.dock(bike_a)
  station.dock(bike_b)
  van.take_broken_bikes_from(station, garage)
  puts 'bikes left in the station after van load: ' + station.bikes.to_s
  puts 'bikes sent to the garage after van unload: ' + garage.bikes.to_s
  garage.fix_bikes
  puts 'bikes fixed the garage: ' + garage.bikes.to_s
  van.take_working_bikes_from(garage, station)
  puts 'bikes back at the station: ' + station.bikes.to_s
  puts 'bikes left in the garage: ' + garage.bikes.to_s

end
