class Ship

  attr_reader :location, :type

  def initialize(type, back, direction)
    length = length_size(type)
    coordinates = area(back, direction, length)
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

  def area(back, direction, length)
    a = back[0]
    b = back[1]
    length_countdown = length - 1
    while length_countdown > 0
      if direction == :up
        c = a
        d = b + 1
        length_countdown -= 1
        e = a
        f = b + 2
        length_countdown -= 1
        g = a
        h = b + 3
        length_countdown -= 1
        i = a
        j = b + 4
      elsif direction == :down
        c = a
        d = b - 1
        length_countdown -= 1
        e = a
        f = b - 2
        length_countdown -= 1
        g = a
        h = b - 3
        length_countdown -= 1
        i = a
        j = b - 4
      elsif direction == :left
        c = a - 1
        d = b
        length_countdown -= 1
        e = a - 2
        f = b
        length_countdown -= 1
        g = a - 3
        h = b
        length_countdown -= 1
        i = a - 4
        j = b
      elsif direction == :right
        c = a + 1
        d = b
        length_countdown -= 1
        e = a + 2
        f = b
        length_countdown -= 1
        g = a + 3
        h = b
        length_countdown -= 1
        i = a + 4
        j = b
      end
    end

    case length
    when 2
      return [[a, b], [c, d]]
    when 3
      return [[a, b], [c, d], [e, f]]
    when 4
      return [[a, b], [c, d], [e, f], [g, h]]
    when 5
      return [[a, b], [c, d], [e, f], [g, h], [i, j]]
    end
  end
end
