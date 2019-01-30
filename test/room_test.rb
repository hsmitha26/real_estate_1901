require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end

  def test_it_has_a_category
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.category
  end

  def test_it_has_length_and_width
    room = Room.new(:bedroom, 10, 13)
    assert_equal 10, room.length
    assert_equal 13, room.width
  end

  def test_it_can_calculate_area
    room = Room.new(:bedroom, 10, 13)
    assert_equal (room.length * room.width), room.area
  end
end
