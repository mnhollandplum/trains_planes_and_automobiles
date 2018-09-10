require './test/test_helper'
require './lib/plane'

class PlaneTest < Minitest::Test
  def test_it_exists
    plane = Plane.new("N34OLV")

    assert_instance_of Plane, plane
  end

  def test_it_has_a_registration
    plane = Plane.new("N34OLV")

    assert_equal "N34OLV", plane.registration
  end
end
