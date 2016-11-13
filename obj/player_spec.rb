#rspec file for player class

require_relative 'player'

describe "Player class" do
    player1 = Player.new("Me", "X")
    it "should record the player's name" do
        expect(player1.name).to eq("Me")
    end
    it "should record whether player is X or O" do
        expect(player1.side).to eq("X")
    end
end