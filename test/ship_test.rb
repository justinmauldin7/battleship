require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_the_ship_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end



  def test_ship_has_a_length
    skip
    ship = Ship.new(2)
    assert_equal 2, ship.length
  end

  def test_it_updates_ship_is_afloat
    skip
    ship = Ship.new(2)
    assert_equal "Afloat", ship.update_ship_status
  end

  def test_it_updates_ship_is_sunk
    skip
    ship = Ship.new(2)
    assert_equal "Sunk", ship.update_ship_status
  end

  def test_it_ends_the_game
    skip
    ship = Ship.new(2)
    assert_equal "Sorry, the game is over.", ship.game_over
  end


end
