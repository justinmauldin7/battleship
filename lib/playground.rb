require './lib/game'
require './lib/board'
require 'pry'

game = Game.new
  game.human_ship_placement
  game.computer_ship_placement
  game.horizontal_or_vertical(["a1", "a2"])





#   @a1 = Space.new
#   @b1 = Space.new
#   @c1 = Space.new
#   @d1 = Space.new
#
#   @a2 = Space.new
#   @b2 = Space.new
#   @c2 = Space.new
#   @d2 = Space.new
#
#   @a3 = Space.new
#   @b3 = Space.new
#   @c3 = Space.new
#   @d3 = Space.new
#
#   @a4 = Space.new
#   @b4 = Space.new
#   @c4 = Space.new
#   @d4 = Space.new
# end
#
#
#
# def template
#     {
#       "a1" => @a1, "a2" => @a2, "a3" => @a3, "a4" => @a4,
#       "b1" => @b1, "b2" => @b2, "b3" => @b3, "b4" => @b4,
#       "c1" => @c1, "c2" => @c2, "c3" => @c3, "c4" => @c4,
#       "d1" => @d1, "d2" => @d2, "d3" => @d3, "d4" => @d4,
#   }
# end
