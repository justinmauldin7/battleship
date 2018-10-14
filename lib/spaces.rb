require './lib/ship'

class Space
attr_accessor :shot_status, :state

  def initialize(shot_status = nil , state = "E")
    @shot_status = shot_status #, M, H
    @state = state #empty or full (E/F)
    
  end

  def add_shot_status
    total_shots = @shot += 1
    #when shot fired, update from zero to
    #either 1 or 2, indicating miss or hit
    #how do we count only hits??
  end

end
