module BikeContainer
  DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def add_bike(bike)
    raise "#{self.class.name} full" if full?
    bikes << bike
  end

  def remove_bike
    raise "#{self.class.name} empty" if empty?
    bikes.pop
  end

  def empty?
    bikes.empty?
  end

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end

  def broken_bikes
    bikes.reject { |bike| !bike.broken? }
  end

  private

  def full?
    bikes.count >= capacity
  end
end
