class Space
attr_accessor
def initialize(coordinates)
  @coordinates = {}
end

def template
  space_a1 = Space.new({"a" => 1})
  space_a2 = Space.new({"a" => 2})
  space_a3 = Space.new({"a" => 3})
  space_a4 = Space.new({"a" => 4})

  space_b1 = Space.new({"b" => 1})
  space_b2 = Space.new({"b" => 2})
  space_b3 = Space.new({"b" => 3})
  space_b4 = Space.new({"b" => 4})

end

# def ship_placement(row_letter, column_number, ship_length)
#   ship_length.times do |index|
#   @array[column_number] = 1
#   @array
#   end
# end

end
