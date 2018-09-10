require './test/test_helper'
require './lib/flight'
require './lib/plane'

class FlightTest < Minitest::Test
  def test_it_exists
    plane  = Plane.new("N34OLV")
    flight = Flight.new("Denver", "Miami", 4021, plane)

    assert_instance_of Flight, flight
  end

  def test_it_has_attributes
    plane  = Plane.new("N34OLV")
    flight = Flight.new("Denver", "Miami", 4021, plane)

    assert_equal "Denver", flight.origin
    assert_equal "Miami", flight.destination
    assert_equal 4021, flight.number
    assert_equal plane, flight.plane
  end

  def test_it_print_a_summary
    plane  = Plane.new("N34OLV")
    flight = Flight.new("Denver", "Miami", 4021, plane)

    assert_equal "Flight 4021 from Denver to Miami", flight.summary
  end
end
