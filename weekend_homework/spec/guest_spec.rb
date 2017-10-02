require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest.rb'
require_relative '../song.rb'
require_relative '../room.rb'

class TestGuest < MiniTest::Test

  def setup()
    
    @song1 = Song.new($songlist[0])
    @guest = Guest.new("Martin", @song1, 25)
  end

  def test_guest_name()
    actual = @guest.name
    assert_equal("Martin", actual)
  end

  def test_guest_favourite_song()
    actual = @guest.favourite.title
    assert_equal("Ring of Fire", actual)
  end

  def test_guest_favourite_artist()
    actual = @guest.favourite.artist
    assert_equal("Johnny Cash", actual)
  end



end
