#!/usr/bin/env ruby
#tic_tac_toe.rb
#main file for program

class TicTacToe
    require_relative 'obj/game'
    require_relative 'obj/player'

    def initialize
        @myGame = Game.new
        getPlayers
        @myGame.play
    end

    #Get players' names and pass them to the game
    def getPlayers
        names = []
        until names.count == 2
            default_name = "Player " + (names.count + 1).to_s
            names.count == 0 ? symbol = 'X' : symbol ='O'
            print "What is #{default_name}'s name? (Enter for '#{default_name}'): "
            name = gets.chomp
            name = default_name if name.length == 0
            names << Player.new(name,symbol)
        end
        @myGame.players = names
    end

end

TicTacToe.new