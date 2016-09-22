class Ship

  attr_reader :location

  def initialize(a, b, x, y)
    @location = [[a, b], [x, y]]
  end

end
