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
    assert_instance_of Space, board.template[:a2]
    assert_instance_of Space, board.template[:a3]
    assert_instance_of Space, board.template[:a4]
    assert_instance_of Space, board.template[:b1]
    assert_instance_of Space, board.template[:b2]
    assert_instance_of Space, board.template[:b3]
    assert_instance_of Space, board.template[:b4]
    assert_instance_of Space, board.template[:c1]
    assert_instance_of Space, board.template[:c2]
    assert_instance_of Space, board.template[:c3]
    assert_instance_of Space, board.template[:c4]
    assert_instance_of Space, board.template[:d1]
    assert_instance_of Space, board.template[:d2]
    assert_instance_of Space, board.template[:d3]
    assert_instance_of Space, board.template[:d4]
  end

  def test_the_template_has_a_state
    board = Board.new
    assert_equal "E", board.template[:d3].state
  end

  def test_it_puts_the_grid
    board_1 = Board.new
    output =
    "===================
    . 1 2 3 4
    A
    B
    C
    D
    ==================="
    # binding.pry
    assert_output (output) { board_1.print_the_grid }
  end
end
