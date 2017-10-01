class Guest
  attr_reader :name, :favourite, :cash
  attr_writer :cash

  def initialize(name, favourite, cash)
    @name = name
    @favourite = favourite
    @cash = cash
  end




end
