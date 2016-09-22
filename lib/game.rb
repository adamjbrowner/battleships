class Game

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(ship)
    @ships << ship if !occupied(ship) && !off_board(ship)

  end

  def fire(target)
    hit = false
    @ships.each do |ship|
      hit = true if ship.location.include? target
    end
    hit
  end

  private

  def occupied(ship)
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
    occupied
  end

  def off_board(ship)
    off = false
    ship.location.each do |point|
      point.each do |number|
        if (number < 0) || (number > 10)
          off = true
        end
      end
    end
    off
  end

end
