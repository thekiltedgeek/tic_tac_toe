#game_spec.rb
#rspec file for Game class

require_relative 'game'
require_relative 'player'

describe "Game class" do
    myGame = Game.new
    
    it "should have a size 2 array called players" do
        expect(myGame.players).to be_instance_of(Array)
        expect(myGame.players.length).to eq(2)
    end
    
    describe "players property" do
        myGame.players[0] = Player.new("Player 1", "X")
        myGame.players[1] = Player.new("Player 2", "O")
        it "should contain 2 objects of type Player" do
            expect(myGame.players[0]).to be_an_instance_of(Player)
            expect(myGame.players[1]).to be_an_instance_of(Player)
        end
    end
    
    it "should have a counter called 'turn' initialized to 0" do
        expect(myGame.turn).to eq(0)
    end
    
    it "should have an object called board of class Board" do
        expect(myGame.board).to be_an_instance_of(Board)
    end
    
    it "should have a property called 'game_over' which returns winning Player object or 'None'"
end