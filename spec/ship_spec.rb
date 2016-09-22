describe Ship do
  before(:each) do
    @ship = Ship.new(:submarine, [1, 1], :right)
  end
  describe "#location" do
    it "Records where it's placed on the board" do
      expect(@ship.location).to eq([[1, 1], [3, 1]])
    end
  end
  describe "#type" do
    it "determines the type of ship" do
      expect(@ship.type).to eq(:submarine)
    end
  end
end
