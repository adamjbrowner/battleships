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
      ship = double(:ship)
      @game.place(ship)
      expect(@game.ships[0]).to eq(ship)
    end
  end
end
