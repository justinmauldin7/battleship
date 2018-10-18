require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_a_human_player_exists
    human = Player.new
    assert_instance_of Player, human
  end

  def test_computer_player_exists
    computer = Player.new
    assert_instance_of Player, computer
  end

  def test_human_takes_a_shot
    computer = Player.new
    human = Player.new
    human_board = Board.new
    computer_board = Board.new
    computer_board.template =
      {
        a1: Space.new, a2: Space.new, a3: Space.new, a4: Space.new,
        b1: Space.new, b2: Space.new, b3: Space.new, b4: Space.new,
        c1: Space.new, c2: Space.new, c3: Space.new, c4: Space.new,
        d1: Space.new, d2: Space.new, d3: Space.new, d4: Space.new,

    }
    human.human_takes_a_shot("a1", computer_board)
    assert_equal "H" || "M", computer_board.template[input].shot_status
  end

  def test_computer_takes_a_Shot
    computer = Player.new
    human = Player.new
    human_board = Board.new
    computer_board = Board.new
    computer.computer_takes_a_shot(human_board)
    spaces_for_shot = [
       "a1", "a2", "a3", "a4",
       "b1", "b2", "b3", "b4",
      "c1", "c2", "c3", "c4",
      "d1", "d2", "d3", "d4"
      ]
    shot_randomizer = Random.new
    shot_random_index = shot_randomizer.rand(0..15)
    shot_array = spaces_for_shot.values_at(shot_random_index)
    shot_symbol = shot_array[0].to_sym
    assert_equal "H" || "M", human_board.template[shot_symbol].shot_status
  end

end
