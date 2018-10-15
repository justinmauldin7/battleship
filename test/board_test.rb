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
    assert_equal "F", board.
  end

  def test_print_the_grid_method
    skip
    board = Board.new
    expected =
      "==================="
      ". 1 2 3 4"
      "A #{@template[:a1].shot_status} #{@template[:a2].shot_status} #{@template[:a3].shot_status} #{@template[:a4].shot_status} "
      "B #{@template[:b1].shot_status} #{@template[:b2].shot_status} #{@template[:b3].shot_status} #{@template[:b4].shot_status} "
      "C #{@template[:c1].shot_status} #{@template[:c2].shot_status} #{@template[:c3].shot_status} #{@template[:c4].shot_status} "
      "D #{@template[:d1].shot_status} #{@template[:d2].shot_status} #{@template[:d3].shot_status} #{@template[:d4].shot_status} "
      "==================="
      assert_equal expected, board.print_the_grid
  end

end
