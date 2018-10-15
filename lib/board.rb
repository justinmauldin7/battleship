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

  def print_the_ships
    puts "==================="
    puts ". 1 2 3 4"
    puts "A #{@template[:a1].state} #{@template[:a2].state} #{@template[:a3].state} #{@template[:a4].state} "
    puts "B #{@template[:b1].state} #{@template[:b2].state} #{@template[:b3].state} #{@template[:b4].state} "
    puts "C #{@template[:c1].state} #{@template[:c2].state} #{@template[:c3].state} #{@template[:c4].state} "
    puts "D #{@template[:d1].state} #{@template[:d2].state} #{@template[:d3].state} #{@template[:d4].state} "
    puts "==================="
  end

  def print_the_grid
    puts "==================="
    puts ". 1 2 3 4"
    puts "A #{@template[:a1].shot_status} #{@template[:a2].shot_status} #{@template[:a3].shot_status} #{@template[:a4].shot_status} "
    puts "B #{@template[:b1].shot_status} #{@template[:b2].shot_status} #{@template[:b3].shot_status} #{@template[:b4].shot_status} "
    puts "C #{@template[:c1].shot_status} #{@template[:c2].shot_status} #{@template[:c3].shot_status} #{@template[:c4].shot_status} "
    puts "D #{@template[:d1].shot_status} #{@template[:d2].shot_status} #{@template[:d3].shot_status} #{@template[:d4].shot_status} "
    puts "==================="
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
