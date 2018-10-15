require './test/test_helper'
require './lib/spaces'

class SpaceTest < Minitest::Test


  def test_space_class_exists
    space = Space.new
    assert_instance_of Space, space
  end

  def test_shot_status_defaults_to_nil
    skip
  end

  def test_state_defaults_to_empty
    skip
  end


end
