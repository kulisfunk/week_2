require 'minitest/autorun'
require 'minitest/rg'

require_relative '../dice.rb'

class TestDice < MiniTest::Test

  def setup()
    @dice = Dice.new()
  end

  # def test_roll()



  def test_roll_has_integers()

    actual = @dice.roll()
    
    assert(Integer ==  actual[0].class)
    assert(Integer ==  actual[1].class)
    assert(Integer ==  actual[2].class)
    assert(Integer ==  actual[3].class)
  end

  def test_roll_to_score()

    roll = [3, 5, 2, 6]

    actual = @dice.roll_to_score(roll)
    assert_equal(6532, actual)
  end


end
