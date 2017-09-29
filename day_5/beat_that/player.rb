class Player
  attr_reader :name
  attr_reader :last_score

  def initialize(name)
    @name = name
    @last_score = 0
  end

  def roll(dice)
   numbers = dice.roll()
   @last_score = dice.roll_to_score(numbers)
   puts
  end



end
