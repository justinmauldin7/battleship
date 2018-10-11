require './lib/game'
require './lib/board'
require './lib/spaces'

class Game
  attr_accessor :number_of_players,
                :boad_size,
                :number_of_ships,
                :game_time

  def initialize
    @number_of_players = number_of_players
    @boad_size = boad_size
    @number_of_ships = number_of_ships
    @game_time = game_time
  end

  def welcome
    puts "Welcome to BATTLESHIP"

    loop do
      puts " "
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      answer = gets.chomp

    if answer != "p" && answer != "i" && answer != "q"
      break
      end

        if (answer == "p")
          p "play the game"
          break
        elsif (answer == "i")
          p "Instructions:"
          p " "
          p "1. The computer will place some ships."
          p "2. You will get to place some ships."
          p "3. You will get to fire a missile."
          p "4. Tjhe computer will fire a missile."
          p "5. You will receive feedback on your launches."

          break
        elsif (answer == "q")
          p "Thanks for playing!"
          break
        else
          puts "Please try your another response (p/i/q)"
          break
        end
    end

  end

  #def gets_coordinates(coordinate, status = "E")
  #  ship_coordinates == gets.chomp
  #  ship_board = Board.new
  #  # hit_board = Board.new
  #  ship_board.template(coordinate, "F")
  #  # hit_board.template[ship_coordinates, "M"]
  #end

end
