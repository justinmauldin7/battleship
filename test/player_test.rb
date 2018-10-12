require_relative '/test/test_helper'
require './lib/player'

class PlayerTest
  def setup
    @computer = Class.new
    @human = Class.new
  end

  def test_player_exists
    assert_equal Player, @human
  end

end
