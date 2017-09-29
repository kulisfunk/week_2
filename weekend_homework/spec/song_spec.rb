require 'minitest/autorun'
require 'minitest/rg'

require_relative '../song.rb'

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new("Parklife")
  end

  def test_song_title()
    actual = @song.title
    assert_equal("Parklife", actual)
  end
end
