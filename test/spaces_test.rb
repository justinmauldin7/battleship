require './test/test_helper'
require './lib/spaces'

class SpaceTest < Minitest::Test

def setup
  @space_a1 = Space.new({"a" => 1})
  @space_b3 = Space.new({"b" => 3})
  @space_c4 = Space.new({"c" => 4})
  @space_d2 = Space.new({"d" => 2})
end

  def test_some_of_the_spaces_exist
    assert_instance_of Space, @space_a1
    assert_instance_of Space, @space_b3
    assert_instance_of Space, @space_c4
    assert_instance_of Space, @space_d2
  end

  def test_it_adds_a_shot
      assert_equal 1, @space_a1.add_shot_status
  end

end
