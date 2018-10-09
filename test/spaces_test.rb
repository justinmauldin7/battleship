require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/spaces'
require 'pry'

class SpaceTest < Minitest::Test

def setup
  @space_a1 = Space.new
  @space_b3 = Space.new
  @space_c4 = Space.new
  @space_d2 = Space.new
end

  def test_the_spaces_exist
    assert_instance_of Space, @space_a1
    assert_instance_of Space, @space_b3
    assert_instance_of Space, @space_c4
    assert_instance_of Space, @space_d2
  end

  def test_a_space_can_change
skip
  end


end
