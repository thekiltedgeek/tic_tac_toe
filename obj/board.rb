#board.rb
#class for the game board

class Board
    attr_reader :board
    def initialize
        initializeBoard
    end
    
    def row(index)
        return @board[index]
    end
    
    def printRow(index)
        rowstring = ''
        self.row(index).each {|cel| rowstring << "#{cel} "}
        return rowstring
    end
    
    def column(index)
        cols = []
        (0..2).each do |i|
            cols << self[i][index]
        end
        
        return cols
    end
    
    def move(col,row,mark)
        @board[col][row] = mark if is_legal?(col,row)
    end
    
    private
    
    def is_legal? (col,row)
        return @board[col][row] == '-'
    end
    
    def win? (col, row, mark)
        return @board.row(row).all? {|cel| cel == mark} || @board.column(col).all?  {|cel| cel == mark}
    end
    
    def initializeBoard
        @board = Array.new
        (0..2).each {@board << ['-','-','-']}
    end
end