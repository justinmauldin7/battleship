require_relative '/test/test_helper'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_game_exists
    skip
    game = Game.new
    assert_instance_of Game, game
  end

  def test_if_we_can_fill_a_space
    game = Game.new
    assert_equal "F", game.user_input_for_coordinates
  end

  def test_a
    skip
  end

end
