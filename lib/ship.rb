class Ship

  attr_reader :location, :type

  def initialize(a, b, x, y, type)
    @location = [[a, b], [x, y]]
    @type = type
  end

end
