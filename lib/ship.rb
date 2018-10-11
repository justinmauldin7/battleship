class Ship
  attr_reader :status
  attr_accessor :length
  def initialize(status = "alive")
    @length = length
    @status = status

  end

  def update_ship_status
    #based on space.shot, update
    #sunk status
  end

  def game_over
    #compare number of ships to
    #number of hits on a
    #if 5 hits, then game over
  end

end
