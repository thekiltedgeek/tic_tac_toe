#board.rb
#class for the game board

class Board
    
    def initialize
        @grid = Array.new
        (0..2).each {@grid << ['-','-','-']}
    end
    
    def printRow(index)
        rowstring = ''
        @grid[index].each {|cel| rowstring << "#{cel} "}
        return rowstring
    end
    
    def move(row,col,symbol)
        @grid[row - 1][col - 1] = symbol if is_legal?(row - 1,col - 1)
    end
    
    def win? (symbol)
        return @grid.any? {|r| r.all? {|cel| cel == symbol}} || self.columns.any? {|c| c.all? {|cel| cel == symbol}} ||            [@grid[0][0],@grid[1][1],@grid[2][2]].all? {|cel| cel == symbol} || [@grid[2][0],@grid[1][1],@grid[2][0]].all? {|cel| cel == symbol}
    end
    
    def columns
        cols = []
        (0..2).each {|i| cols << self.column(i)}
        return cols
    end
    
    def column(index)
        col = []
        (0..2).each do |i|
            col << @grid[i][index]
        end
        
        return col
    end
    
    private
    
    def row(index)
        return @grid[index]
    end
    
    
    
    
    
    def is_legal? (row,col)
        if (0..2) === row && (0..2) === col
            return @grid[row][col] == '-'
        else
            return false
        end
    end
end