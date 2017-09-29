require_relative("./Game")
require_relative("./Dice")
require_relative("./Player")

dice = Dice.new()
player1 = Player.new("John")
player2 = Player.new("Scott")

players = [player1, player2]

game = Game.new(players, dice)
game.start()
