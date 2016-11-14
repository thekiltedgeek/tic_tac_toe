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
    
    def move(row,col,mark)
        @board[row - 1][col - 1] = mark if is_legal?(row - 1,col - 1)
    end
    
    private
    
    def is_legal? (row,col)
        if (0..2) === row && (0..2) === col
            return @board[row][col] == '-'
        else
            return false
        end
    end
    
    def win? (col, row, mark)
        return @board.row(row).all? {|cel| cel == mark} || @board.column(col).all?  {|cel| cel == mark}
    end
    
    def initializeBoard
        @board = Array.new
        (0..2).each {@board << ['-','-','-']}
    end
end