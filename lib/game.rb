class Game

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(a, b, x, y)
    @ships << Ship.new(a, b, x, y)
  end

end
