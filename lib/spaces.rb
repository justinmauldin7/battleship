require './lib/ship'

class Space
attr_accessor :shot, :ship
def initialize
  @shot = shot
  @ship = Ship.new
end

def take_a_shot
  # get coordinates of shot from user
end

# def ship_placement(row_letter, column_number, ship_length)
#   ship_length.times do |index|
#   @array[column_number] = 1
#   @array
#   end
# end

end
