describe Game do
  before(:each) do
    @game = Game.new
  end

  describe "#initialize" do
    it "Starts with an empty ships array" do
      expect(@game.ships).to eq([])
    end
  end
end
