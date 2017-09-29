class Game
  attr_reader :won, :players, :dice

  def initialize(players, dice)
    @won = false
    @players = players
    @dice = dice
  end

  def start()
    puts "Welcome to BEAT THAT !!!"

    while (@won == false)
      current_player = @players[0]
      last_player = @players[1]

      current_player.roll(@dice)
      current_player_score = current_player.last_score

      puts "#{current_player.name} rolled a #{current_player_score}"

      if current_player_score > last_player.last_score

       @players.rotate!

      else
        @won = true
        puts "#{last_player.name} wins with a score of #{last_player.last_score}"
      end



    end

  end

end
