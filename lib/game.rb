class Game

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(ship)
    occupied = false
    ship.location.each do |single_point|
      @ships.each do |placed_ship|
        placed_ship.location.each do |matching_point|
          if single_point == matching_point
            occupied = true
          end
        end
      end
    end
    @ships << ship if !occupied && !off_board(ship)
  end

  private

  def off_board(ship)
    off = false
    ship.location.each do |point|
      point.each do |number|
        if number < 0
          off = true
        end
      end
    end
    off
  end

end
