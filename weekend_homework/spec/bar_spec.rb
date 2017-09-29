require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bar.rb'
require_relative '../room.rb'
require_relative '../guest.rb'
require_relative '../song.rb'

class TestBar < MiniTest::Test

  def setup()
    @bar = Bar.new("Gerupta Singh's")
    @song1 = Song.new("Don't you want me")
    @song2 = Song.new("Mama")
    @room1 = Room.new(1, @song1)
    @room2 = Room.new(2, @song1)
    @guest1 = Guest.new("John", "Mama")
    @guest2 = Guest.new("Martin", "Don't you want me")
  end

  def test_bar_name()
    actual = @bar.bar_name
    assert_equal("Gerupta Singh's", actual)
  end

  def test_add_room()
    @bar.add_room(@room1, @song1)
    actual = @bar.count_rooms()
    assert_equal(1, actual)
  end

  def test_room_playlist()
    @bar.add_room(@room1, @song1)
    actual = @bar.room_playlist()
    assert_equal([@room1], actual)
  end

  def test_add_guest()
    actual = @bar.add_guest(@room1, @guest2)
    assert_equal([@guest2], actual)
  end

  def test_add_guest__rejected()
    @bar.add_guest(@room1, @guest1)
    actual = @bar.add_guest(@room1, @guest2)
    assert_equal(false, actual)
  end

  def test_remove_guest()
    @bar.add_guest(@room2, @guest1)
    @bar.add_guest(@room2, @guest2)
    actual = @bar.remove_guest(@room2, @guest2)
    assert_equal([@guest1], actual)
  end



end
