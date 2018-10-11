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

  gets.chomp

  if gets.chomp == "p"
    #play the game
  elsif gets.chomp == "i"
    #show instructions
  elsif gets.chomp == "q"
    #quit the game
  else
    #enter a valid prompt
end

end
