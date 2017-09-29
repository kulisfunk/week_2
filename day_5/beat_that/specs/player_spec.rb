require 'minitest/autorun'
require 'minitest/rg'

require_relative '../player.rb'
require_relative '../dice.rb'

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("Martin")
    @dice = Dice.new()

  end

  def test_player_name()
    actual = @player.name
    assert_equal("Martin", actual)
  end

  def test_initial_score()
    actual = @player.last_score
    assert_equal(0, actual)
  end

  def test_player_roll_dice()
    @player.roll(@dice)

    assert(@player.last_score >= 1111 && @player.last_score <= 6666)
  end



end
