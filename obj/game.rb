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
end