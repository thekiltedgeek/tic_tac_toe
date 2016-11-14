#board.rb
#class for the game board

class Board
    
    def initialize
        initializeBoard
    end
    
    def row(index)
        return @grid[index]
    end
    
    def column(index)
        cols = []
        (0..2).each do |i|
            cols << @grid[i][index]
        end
        
        return cols
    end
    
    def display
        puts ''
        puts "  1 2 3"
        puts "1 " + printRow(0)
        puts "2 " + printRow(1)
        puts "3 " + printRow(2)
    end
    
    def move(row,col,mark)
        @grid[row - 1][col - 1] = mark if is_legal?(row - 1,col - 1)
    end
    
    private
    
    def printRow(index)
        rowstring = ''
        self.row(index).each {|cel| rowstring << "#{cel} "}
        return rowstring
    end
    
    def is_legal? (row,col)
        if (0..2) === row && (0..2) === col
            return @grid[row][col] == '-'
        else
            return false
        end
    end
    
    def win? (col, row, mark)
        return self.row(row).all? {|cel| cel == mark} || self.column(col).all?  {|cel| cel == mark}
    end
    
    def initializeBoard
        @grid = Array.new
        (0..2).each {@grid << ['-','-','-']}
    end
end