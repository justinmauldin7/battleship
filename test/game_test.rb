require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_game_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_the_game_starts
    game = Game.new
    assert_equal "p", game.start_prompt
  end

  def test_if_we_can_print_ship_coordinates
    game = Game.new
    assert_equal coordinate, status, game.gets_coordinates("a1", "F")
  end

end
