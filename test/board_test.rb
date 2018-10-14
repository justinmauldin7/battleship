require './test/test_helper'
require './lib/board'

class BoardTest < Minitest::Test

  def test_the_board_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_a_space_on_the_template_exists
    board = Board.new
    assert_instance_of Space, board.template[:a1]
  end
end
