require './test/test_helper'
require './lib/passenger'
require './lib/flight'
require './lib/plane'

class PassengerTest < Minitest::Test
  def test_it_exists
    plane  = Plane.new("N45O29")
    flight = Flight.new("Denver", "Miami", 4021, plane)
    passenger = Passenger.new("Josh Weaver", flight)

    assert_instance_of Passenger, passenger
  end

  def test_it_has_attributes
    plane  = Plane.new("N45O29")
    flight = Flight.new("Denver", "Miami", 4021, plane)
    passenger = Passenger.new("Josh Weaver", flight)

    assert_equal "Josh Weaver", passenger.name
    assert_equal flight, passenger.flight
  end
end
