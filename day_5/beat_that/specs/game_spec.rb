require 'minitest/autorun'
require 'minitest/rg'

require_relative '../player.rb'
require_relative '../dice.rb'
require_relative '../game.rb'

class TestGame < MiniTest::Test

  def setup()
    @dice = Dice.new()

    @player1 = Player.new("Martin")
    @player2 = Player.new("Fred")

    players = [@player1, @player2]

    @game = Game.new(players, @dice)

  end

  def test_game_not_won()
    won = @game.won

    refute(won)
  end

  def test_game_has_players()

    players = @game.players

    assert_equal(2, players.length)
  end

  def test_game_has_dice()
    dice = @game.dice
    assert_equal(Dice, dice.class )
  end

  def test_game_actually_finishes()
    @game.start()
    won = @game.won

    assert(won)
  end



end
