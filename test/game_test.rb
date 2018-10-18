require './test/test_helper'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_game_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_if_end_game_sequence
    skip
    game = Game.new
    human_player = Player.new
    human_player.player_hits = 5
    assert_equal "Thanks for playing BATTLESHIP!", game.end_game_sequence
  end

  def test_a_computer_can_place_a_ship
    computer_player = Player.new
    human_board = Board.new
    @template =
      {
        a1: Space.new, a2: Space.new, a3: Space.new, a4: Space.new,
        b1: Space.new, b2: Space.new, b3: Space.new, b4: Space.new,
        c1: Space.new, c2: Space.new, c3: Space.new, c4: Space.new,
        d1: Space.new, d2: Space.new, d3: Space.new, d4: Space.new,

    }
    computer_player.computer_takes_a_shot(human_board)
    assert_equal "E", @template[:a1].state
  end

end
