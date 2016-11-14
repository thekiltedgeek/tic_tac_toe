#board_spec.rb
#rspec file for Board class

require_relative 'board'

describe "Board class" do
    myBoard = Board.new
    it "should have a 3x3 Array to represent the state of the board"
    it "should return a single row as an Array" do
        expect(myBoard.row(1)).to be_instance_of(Array)
    end
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
    it "should indicate if last legal move results in a win"
    it "should indicate a draw if board is full and neither player has won"
end