describe Ship do
  describe "#location" do
    it "Records where it's placed on the board" do
      game = Game.new
      game.place(1, 1, 1, 3)
      expect(game.ships[0].location).to eq([[1, 1], [1, 3]])
    end
  end
end
