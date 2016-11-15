#board_spec.rb
#rspec file for Board class

require_relative 'board'

describe "Board class" do
    myBoard = Board.new
    it "should return a single column as an Array" do
        expect(myBoard.column(1)).to be_instance_of(Array)
    end
    #We make a move first to set up next test
    it "should update board with legal move" do
        expect(myBoard.move(1,2,'X')).to eq('X')
    end
    #Now we try moving to same cell
    it "should return nil if intended move is not legal" do
        expect(myBoard.move(1,2,'O')).to eq(nil)
    end
end