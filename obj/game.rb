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
    end
    
    def play
        until @turn == 10
            @board.display
            getMove
        end
    end
    
    def getMove
        valid = nil
        current_player = @players[@turn % 2]
        until valid != nil
            print "#{current_player.name}'s turn (row,col): "
            response = gets.chomp
            valid = @board.move(response[0].to_i,response[-1].to_i,"#{current_player.side}")
            puts "Invalid move, #{current_player.name}" if valid == nil
        end
        @turn += 1
    end
    
    
end