require 'minitest/autorun'
require 'minitest/rg'

require_relative '../room.rb'
require_relative '../song.rb'
require_relative '../guest.rb'
require_relative '../bar.rb'

class TestRoom < MiniTest::Test

  def setup()

    @song1 = Song.new($songlist[0])
    @song2 = Song.new($songlist[1])
    @room1 = Room.new(1, @song1, 20)
    @room2= Room.new(1, @song1, 15)
    @guest1 = Guest.new("John", "Ring of Fire", 25)
    @guest2 = Guest.new("Martin", "Don't you want me", 17)
  end

  def test_room_playlist()
    actual = @room1.song()
    assert_equal(@song1, actual)
  end

  def test_room_size()
    actual = @room1.size()
    assert_equal(1, actual)
  end

  def test_room_guests()
    actual = @room1.count_guests()
    assert_equal(0, actual)
  end

  def test_add_song()
    actual = @room1.add_song(@song2)
    assert_equal([@song2], actual)
  end

  def test_add_guest__favourite()
    actual = @room2.add_guest(@room2, @guest1)
    assert_equal([@guest1], actual)
  end

  def test_add_guest__not_favourite()
    actual = @room2.add_guest(@room2, @guest2)
    assert_equal([@guest2], actual)
  end

  def test_add_guest__rejected_room_full()
    @room2.add_guest(@room2, @guest1)
    actual = @room2.add_guest(@room2, @guest2)
    assert_equal(false, actual)
  end

  def test_add_guest__rejected_not_enough_money()
    actual = @room1.add_guest(@room1, @guest2)
    assert_equal(false, actual)
  end

  def test_add_guest__deduct_money()
    actual = @room1.add_guest(@room1, @guest1)
    assert_equal([@guest1], actual)
  end

  def test_remove_guest()
    @room2.add_guest(@room2, @guest1)
    @room2.add_guest(@room2, @guest2)
    actual = @room2.remove_guest(@room2, @guest2)
    assert_equal([@guest1], actual)
  end

  def test_show_guest_song()
    @room1.add_guest(@room1, @guest1)
    actual = @room1.show_guest_song(@guest1)
    assert_equal(["Ring of Fire"], actual)
  end





end
