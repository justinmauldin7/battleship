require_relative '/test/test_helper'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_game_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_if_we_can_print_ship_coordin
    game = Game.new
    assert_equal "E", game.gets_coordinates()
  end

  def test_
  end

end
