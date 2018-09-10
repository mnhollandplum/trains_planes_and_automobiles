class Passenger
  attr_reader :name,
              :flight

  def initialize(name, flight)
    @name   = name
    @flight = flight
  end
end
