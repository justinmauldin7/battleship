require './lib/ship'

class Space
attr_accessor :shot, :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @shot = 0 #0-empty, 1-miss, 2-hit integer
    @ship = ship
    #@status = status #string of shot
  end

  def add_shot_status
    total_shots = @shot += 1
    #when shot fired, update from zero to
    #either 1 or 2, indicating miss or hit
  end

end
