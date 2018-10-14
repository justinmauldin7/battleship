require './lib/spaces'

class Board
  attr_accessor :template

  def initialize
    @ship_count = 0
    @template =
      {
        a1: Space.new, a2: Space.new, a3: Space.new, a4: Space.new,
        b1: Space.new, b2: Space.new, b3: Space.new, b4: Space.new,
        c1: Space.new, c2: Space.new, c3: Space.new, c4: Space.new,
        d1: Space.new, d2: Space.new, d3: Space.new, d4: Space.new,

    }
  end

  # def computer_ship_placement
  #   #get random combinations of A-D & 1-4
  #   #assign those to the board
  #   #create a new ship Ship.new(coordinates)
  #   #increment ship count by one
  #   #update space to full
  #
  # end
  #
  # def human_ship_placement(coord_1, coord_2)
  #
  #   space_template["a1"]
  #   aspace.state = "F"
  #   #prompt user for coordinates
  #   #assign those values to the board
  #   #increment ship count by one
  #   #update space to full
  # end





# def ship_placement(row_letter, column_number, ship_length)
#   ship_length.times do |index|
#   @array[column_number] = 1
#   @array
#   end
# end


end
