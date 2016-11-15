#player.rb
#class for player objects

class Player
    attr_reader :name, :symbol
    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end
end