class Garage
  include BikeContainer

  def fix_bikes
    bikes.each { |bike| bike.fix }
  end
  
end
