require './test/test_helper'
require './lib/spaces'

class SpaceTest < Minitest::Test


  def test_space_class_exists
    space = Space.new
    assert_instance_of Space, space
  end

  def test_shot_status_defaults_to_nil
    space = Space.new
    assert_equal nil, space.shot_status
  end

  def test_state_defaults_to_empty
    space = Space.new
    assert_equal "E", space.state
  end

  def test_it_adds_a_shot_to_the_space
    space = Space.new
    assert_equal 1, space.add_shot_status
  end

end
