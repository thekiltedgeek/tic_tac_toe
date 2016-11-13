#board.rb
#class for the game board

class Board
    def initialize
        initializeBoard
    end
    
    def row(index)
        return @board[index]
    end
    
    def column(index)
        cols = []
        (0..2).each do |i|
            cols << @board[i][index]
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
    
    def win?
    end
    
    def initializeBoard
        @board = Array.new
        (0..2).each {@board << ['-','-','-']}
    end
end