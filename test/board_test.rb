require_relative '/test/test_helper'
require './lib/board'

class BoardTest < Minitest::Test

  def test_the_board_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_has_a_template
    board = Board.new
    expected = ({
    a1: =>  ,a2: =>  ,a3: =>  ,a4: =>  ,
    b1: =>  ,b2: =>  ,b3: =>  ,b4: =>  ,
    c1: =>  ,c2: =>  ,c3: =>  ,c4: =>  ,
    d1: =>  ,d2: =>  ,d3: =>  ,d4: =>
  })
    assert_equal expected, board.template

  end
end
