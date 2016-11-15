#game.rb
#class for the overall game
require_relative 'board'

class Game
    attr_accessor :players, :board
    attr_reader :turn
    
    def initialize
        @players = Array.new(2)
        @board = Board.new
        @turn = 0
        @current_player
    end
    
    def play
        begin
            display
            getMove
        end until @turn == 9 || (@board.win?(@current_player.symbol))
        
        if @turn == 9
            gameOver('draw')
            else
            gameOver(@current_player.name)
        end
    end
    
    def display
        puts ''
        puts "  1 2 3"
        puts "1 " + @board.printRow(0)
        puts "2 " + @board.printRow(1)
        puts "3 " + @board.printRow(2)
    end
    
    def getMove
        valid = nil
        @current_player = @players[@turn % 2]
        until valid != nil
            print "#{@current_player.name}'s turn (row,col): "
            response = gets.chomp
            valid = @board.move(response[0].to_i,response[-1].to_i,"#{@current_player.symbol}")
            puts "Invalid move, #{@current_player.name}" if valid == nil
        end
        @turn += 1
    end
    
    def gameOver(text)
        display
        if text == 'draw'
            puts "The game ends in a draw"
            else
            puts "#{text} wins"
        end
    end
    
end