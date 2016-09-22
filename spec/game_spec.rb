describe Game do
  before(:each) do
    @game = Game.new
  end

  describe "#initialize" do
    it "Starts with an empty ships array" do
      expect(@game.ships).to eq([])
    end
  end

  describe "#place" do
    it "Places a ship onto the board" do
      ship = Ship.new(:submarine, [1, 1], :right)
      @game.place(ship)
      expect(@game.ships[0]).to eq(ship)
    end
    it "Doesn't allow ships to overlap" do
      ship = Ship.new(:submarine, [1, 1], :right)
      ship2 = Ship.new(:submarine, [2, 3], :down)
      @game.place(ship)
      @game.place(ship2)
      expect(@game.ships.length).to eq(1)
    end
  end
end
