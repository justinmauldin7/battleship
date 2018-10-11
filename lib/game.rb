require './lib/ship'
require './lib/spaces'
require './lib/board'


class Game
  attr_accessor :number_of_player, :boad_size, :number_of_ships, :game_time
def initialize
  @number_of_players = number_of_player
  @boad_size = boad_size
  @number_of_ships = number_of_ships
  @game_time = game_time
end

def welcome
  puts "Welcome to BATTLESHIP"
  puts " "
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

loop do

answer = gets.chomp

if answer != "p" && answer != "i"
  break
end

    if (answer == "p")
      p "play the game"
    elsif (answer == "i")
      p "show instructions"
    else
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
end
end



end
