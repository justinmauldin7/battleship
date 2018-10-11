require './lib/spaces'

class Board
  attr_accessor :template
  def initialize
    @template = template
  end


  def template
      {
        "a1" => " ", "a2" => " ", "a3" => " ", "a4" => " ",
        "b1" => " ", "b2" => " ", "b3" => " ", "b4" => " ",
        "c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ",
        "d1" => " ", "d2" => " ", "d3" => " ", "d4" => " "
    }
  end

  def computer_ship_placement
    #get random combinations of A-D & 1-4
    #assign those to the board
  end

  def human_ship_placement
    #prompt user for coordinates
    #assign those values to the board
  end





# def ship_placement(row_letter, column_number, ship_length)
#   ship_length.times do |index|
#   @array[column_number] = 1
#   @array
#   end
# end


end
