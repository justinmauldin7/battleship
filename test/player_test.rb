require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def setup
    @computer = Player.new
    @human = Player.new
  end

  def test_human_player_exists
    assert_instance_of Player, @human
  end

  def test_computer_player_exists
    assert_instance_of Player, @computer
  end

  def test_it_takes_a_shot
    skip
    assert_equal 5, @human.human_takes_a_shot("a1")
  end

  def test_it_has_ships
    skip
  end

end
