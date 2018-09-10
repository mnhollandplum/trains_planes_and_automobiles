require './test/test_helper'
require './lib/passenger'
require './lib/trip'

class TripTest < Minitest::Test
  def test_it_exists
    passenger = Passenger.new("Lesley Duval")
    trip      = Trip.new(25, 5, passenger)

    assert_instance_of Trip, trip
  end

  def test_it_has_attributes
    passenger = Passenger.new("Lesley Duval")
    trip      = Trip.new(25, 5, passenger)

    assert_equal 25, trip.fare
    assert_equal 5, trip.tip
    assert_equal passenger, trip.passenger
  end
end
