class Ship

  attr_reader :location, :type

  def initialize(type, front, direction)
    length = length_size(type)
    coordinates = direction_coordinates(front, direction, length)
    @location = coordinates
    @type = type
  end

  private

  def length_size(type)
    case type
    when :aircraft_carrier
      length = 5
    when :battleship
      length = 4
    when :submarine
      length = 3
    when :destroyer
      length = 3
    when :patrol_boat
      length = 2
    end
  end

  def direction_coordinates(front, direction, length)
    a = front[0]
    b = front[1]
    case direction
    when :up
      y = b + (length - 1)
      x = a
    when :down
      y = b - (length - 1)
      x = a
    when :right
      x = a + (length - 1)
      y = b
    when :left
      x = a - (length - 1)
      y = b
    end
    # 1 needs to be deducted from length to take into account that the front of the ship is included in it's length
    [[a, b], [x, y]]
  end
end
