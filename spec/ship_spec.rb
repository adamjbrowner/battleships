describe Ship do
  before(:each) do
    @ship = Ship.new(:submarine, [1, 1], :right)
    @ship2 = Ship.new(:aircraft_carrier, [3, 7], :down)
    @ship3 = Ship.new(:battleship, [10, 10], :left)
  end
  describe "#type" do
    it "determines the type of ship" do
      expect(@ship.type).to eq(:submarine)
    end
  end
  describe "#location" do
    it "determines the coordinates that the ships covers" do
      expect(@ship.location).to eq([[1, 1], [2, 1], [3, 1]])
      expect(@ship2.location).to eq([[3, 7], [3, 6], [3, 5], [3, 4], [3, 3]])
      expect(@ship3.location).to eq([[10, 10], [9, 10], [8, 10], [7, 10]])
    end
  end
end
