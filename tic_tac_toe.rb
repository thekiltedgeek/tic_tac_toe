#tic_tac_toe.rb
#main file for program
require_relative 'obj/game'
require_relative 'obj/player'

#Create our game
myGame = Game.new

#Get players' names and pass them to the game
names = []
until names.count == 2
    default_name = "Player " + (names.count + 1).to_s
    names.count == 0 ? side = 'X' : side ='Y'
    print "What is #{default_name}'s name? (Enter for '#{default_name}'): "
    name = gets.chomp
    name = default_name if name.length == 0
    names << Player.new(name,side)
end
myGame.players = names

#Now we turn control over to the game
myGame.play
