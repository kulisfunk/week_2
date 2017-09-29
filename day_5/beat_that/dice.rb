class Dice

  def initialize()
  end

  def roll()

    roll_result = []
    4.times do
      roll = rand(1..6)
      roll_result << roll
      end
    return roll_result
  end

  def roll_to_score(numbers)

    return numbers
    .sort()
    .reverse()
    .join()
    .to_i()
  end

end
