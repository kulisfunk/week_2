require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest.rb'

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Martin", "Don't you want me")
  end

  def test_guest_name()
    actual = @guest.name
    assert_equal("Martin", actual)
  end

  def test_guest_favourite()
    actual = @guest.favourite
    assert_equal("Don't you want me", actual)
  end


end
