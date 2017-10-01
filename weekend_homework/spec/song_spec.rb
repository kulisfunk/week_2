require 'minitest/autorun'
require 'minitest/rg'

require_relative '../song.rb'

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new({title: "Ring of Fire", artist: "Johnny Cash"})
  end

  def test_song_title()
    actual = @song.title
    assert_equal("Ring of Fire", actual)
  end

  def test_song_artist()
    actual = @song.artist
    assert_equal("Johnny Cash", actual)
  end

end
