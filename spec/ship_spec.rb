describe Ship do
  describe "#location" do
    it "Records where it's placed on the board" do
      ship = Ship.new(1 ,1, 1, 1, :type)
      expect(ship.location).to eq([[1, 1], [1, 1]])
    end
  end
  describe "#type" do
    it "determines the type of ship" do
      ship = Ship.new(1, 1, 3, 1, :submarine)
      expect(ship.type).to eq(:submarine)
    end
  end
end
