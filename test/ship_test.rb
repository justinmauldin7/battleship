require_relative '/test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_the_ship_exists
    skip
    ship = Ship.new
    assert_instance_of Ship, ship
  end

def test_ship_has_a_status
  skip
  ship = Ship.new
  assert_equal "alive", ship.status
end

def test_ship_has_a_length
  ship = Ship.new(2)
  assert_equal 2, ship.length
end

end
