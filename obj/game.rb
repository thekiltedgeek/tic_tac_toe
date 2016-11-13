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
        displayBoard
    end
    
    def displayBoard
        puts @board.printRow(0)
        puts "-+-+-"
        puts @board.printRow(1)
        puts "-+-+-"
        puts @board.printRow(2)
    end
end