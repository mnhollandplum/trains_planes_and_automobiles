require './test/test_helper'
require './lib/passenger'
require './lib/trip'
require './lib/taxi'

class TaxiTest < Minitest::Test
  def test_it_exists
    taxi = Taxi.new("3A94")

    assert_instance_of Taxi, taxi
  end

  def test_it_can_add_trips
    passenger = Passenger.new("Lesley Duval")
    trip      = Trip.new(25, 5, passenger)
    taxi = Taxi.new("3A94")

    taxi.add_trip(trip)

    assert_equal [trip], taxi.trips
  end

  def test_it_can_find_the_amount_of_the_lowest_fare
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(25, 5, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(20, 1, passenger_2)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)

    assert_equal 20, taxi.lowest_fare
  end

  def test_it_can_find_the_amount_of_the_lowest_tip
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(25, 5, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(20, 1, passenger_2)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)

    assert_equal 1, taxi.lowest_tip
  end

  def test_it_can_find_the_lowest_percent_tip
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(20, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)

    assert_equal 20.0, taxi.lowest_tip_percentage
  end

  def test_it_can_find_all_fares_greater_than_20_dollars
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(22, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)
    passenger_3 = Passenger.new("Barry Shin")
    trip_3      = Trip.new(25, 5, passenger_3)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)
    taxi.add_trip(trip_3)

    assert_equal [trip_1, trip_3], taxi.trips_over_20
  end

  def test_it_can_find_the_trip_with_the_highest_fare
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(22, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)
    passenger_3 = Passenger.new("Barry Shin")
    trip_3      = Trip.new(25, 5, passenger_3)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)
    taxi.add_trip(trip_3)

    assert_equal trip_3, taxi.trip_with_highest_fare
  end

  def test_it_can_find_the_highest_tipper
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(22, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)
    passenger_3 = Passenger.new("Barry Shin")
    trip_3      = Trip.new(25, 5, passenger_3)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)
    taxi.add_trip(trip_3)

    assert_equal passenger_3, taxi.highest_tipper
  end

  def test_it_can_calculate_total_earnings
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(22, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)
    passenger_3 = Passenger.new("Barry Shin")
    trip_3      = Trip.new(25, 5, passenger_3)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)
    taxi.add_trip(trip_3)

    assert_equal 57, taxi.total_earnings
  end

  def test_it_can_calculate_the_total_tips_for_the_day
    skip
    taxi        = Taxi.new("3A94")
    passenger_1 = Passenger.new("Lesley Duval")
    trip_1      = Trip.new(22, 4, passenger_1)
    passenger_2 = Passenger.new("Amy Thomas")
    trip_2      = Trip.new(10, 4, passenger_2)
    passenger_3 = Passenger.new("Barry Shin")
    trip_3      = Trip.new(25, 5, passenger_3)

    taxi.add_trip(trip_1)
    taxi.add_trip(trip_2)
    taxi.add_trip(trip_3)

    assert_equal 13, taxi.total_tips
  end
end
