require './test/test_helper'
require './lib/airport'
require './lib/plane'
require './lib/flight'
require './lib/passenger'
require './lib/suitcase'


class AirportTest < Minitest::Test
  def test_it_exists
    airport = Airport.new

    assert_instance_of Airport, airport
  end

  def test_it_has_a_takeoff_queue
    airport = Airport.new

    assert_equal [], airport.queue
  end

  def test_it_can_add_a_plane_to_a_queue
    airport = Airport.new
    plane = Plane.new("N45O29")

    airport.release_from_gate(plane)

    assert_equal [plane], airport.queue
  end

  def test_it_can_track_takeoffs
    skip
    airport = Airport.new
    plane = Plane.new("N45O29")

    airport.release_from_gate(plane)
    airport.takeoff

    assert_equal [], airport.queue
  end

  def test_it_can_add_multiple_planes_to_queue
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")

    airport.release_from_gate(plane_1)
    airport.release_from_gate(plane_2)

    assert_equal [plane_1, plane_2], airport.queue
  end

  def test_planes_takeoff_in_order
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")

    airport.release_from_gate(plane_1)
    airport.release_from_gate(plane_2)
    airport.takeoff

    assert_equal [plane_2], airport.queue
  end

  def test_it_can_add_flights
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)

    airport.add_flight(flight_1)
    airport.add_flight(flight_2)

    assert_equal [flight_1, flight_2], airport.flights
  end

  def test_it_can_create_a_flight_summary
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)

    airport.add_flight(flight_1)
    airport.add_flight(flight_2)

    expected = "Flight 4021 from Denver to Miami\nFlight 4112 from Denver to New York"
    actual = airport.flight_summary

    assert_equal expected, actual
  end

  def test_it_can_find_all_flights_going_to_a_city
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    plane_3 = Plane.new("N24YYZ")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)
    flight_3 = Flight.new("Denver", "Miami", 4141, plane_3)

    airport.add_flight(flight_1)
    airport.add_flight(flight_2)
    airport.add_flight(flight_3)

    assert_equal [flight_1, flight_3], airport.flights_to("Miami")
  end

  def test_it_can_see_if_a_flight_exists_with_a_given_destination
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    plane_3 = Plane.new("N24YYZ")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)
    flight_3 = Flight.new("Denver", "Miami", 4141, plane_3)

    airport.add_flight(flight_1)
    airport.add_flight(flight_2)
    airport.add_flight(flight_3)

    assert airport.flight_to?("Miami")
    assert airport.flight_to?("New York")
    refute airport.flight_to?("Prague")
  end

  def test_it_can_check_passengers_in
    skip
    airport     = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)
    passenger_1 = Passenger.new("Josh Weaver", flight_1)
    passenger_2 = Passenger.new("Matt Thompson", flight_2)
    airport.add_passenger(passenger_1)
    airport.add_passenger(passenger_2)

    assert_equal [passenger_1, passenger_2], airport.passengers
  end

  def test_it_can_organize_passengers_by_flight
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)
    passenger_1 = Passenger.new("Josh Weaver", flight_1)
    passenger_2 = Passenger.new("Matt Thompson", flight_2)
    passenger_3 = Passenger.new("Lisa Stern", flight_2)
    airport.add_passenger(passenger_1)
    airport.add_passenger(passenger_2)
    airport.add_passenger(passenger_3)

    expected = {flight_1 => [passenger_1], flight_2 => [passenger_2, passenger_3]}

    assert_equal expected, airport.passengers_by_flight
  end

  def test_it_can_add_a_suitcase
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    plane_2 = Plane.new("N239OT")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    flight_2 = Flight.new("Denver", "New York", 4112, plane_2)
    passenger_1 = Passenger.new("Josh Weaver", flight_1)
    passenger_2 = Passenger.new("Matt Thompson", flight_2)
    passenger_3 = Passenger.new("Lisa Stern", flight_2)
    suitcase_1  = Suitcase.new(50, passenger_1)
    suitcase_2  = Suitcase.new(50, passenger_1)
    suitcase_3  = Suitcase.new(50, passenger_2)
    suitcase_4  = Suitcase.new(50, passenger_3)
    suitcase_5  = Suitcase.new(50, passenger_3)
    airport.add_suitcase(suitcase_1)
    airport.add_suitcase(suitcase_2)
    airport.add_suitcase(suitcase_3)
    airport.add_suitcase(suitcase_4)
    airport.add_suitcase(suitcase_5)


  end

  def test_it_can_organize_luggage_by_owner
    skip
    airport = Airport.new
    plane_1 = Plane.new("N45O29")
    flight_1 = Flight.new("Denver", "Miami", 4021, plane_1)
    passenger_1 = Passenger.new("Josh Weaver", flight_1)
    suitcase_1  = Suitcase.new(50, passenger_1)
    airport.add_suitcase(suitcase_1)

    assert_equal [suitcase_1], airport.suitcases
  end
end
