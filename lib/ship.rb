require './lib/spaces'
require './lib/board'

class Ship
  attr_reader :status
  attr_accessor :length, :coordinates

  def initialize(status = "Afloat")
    @length = length
    @status = status
    @coordinates = coordinates

  end

  def update_ship_status
    if @shot == @length
      @status = "Sunk"
    else
      @status = "Afloat"
    end
    #based on space.shot, update
    #sunk status
  end

  def game_over
    if @shot == 2 &&
      10 == @shot.count
      puts "Sorry, the game is over."
    else
      ships_afloat = @shots.count * @length
      puts "Player 1 has #{ships_afloat}."
      #puts "Player 2 has #{@ships_afloat}."
    #compare number of ships to
    #number of hits on a
    #if 5 hits, then game over
  end
  end

end
