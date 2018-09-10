require './test/test_helper'
require './lib/passenger'

class PassengerTest < Minitest::Test
  def test_it_exists
    passenger = Passenger.new("Arjun Gowda")

    assert_instance_of Passenger, passenger
  end

  def test_it_has_attributes
    passenger = Passenger.new("Arjun Gowda")

    assert_equal "Arjun Gowda", passenger.name
  end
end

