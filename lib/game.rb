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
          puts "play the game"
          break
        elsif (answer == "i")
          puts "Instructions:"
          puts '================================================'
          puts '1. The computer will place some ships.'
          puts "2. You will get to place some ships."
          puts "3. You will get to fire a missile."
          puts "4. The computer will fire a missile."
          puts "5. You will receive feedback on your launches."
          puts "================================================"
          break
        elsif (answer == "q")
          puts "Thanks for playing!"
          break
        else
          puts "Please try your another response (p/i/q)"
          break
        end
    end

  end

  def gets_coordinates(coordinate, status = "E")
    ship_coordinates == gets.chomp
    ship_board = Board.new
    hit_board = Board.new
    ship_board.template(coordinate, "F")
    # hit_board.template[ship_coordinates, "M"]
  end

  def prompt_for_a_shot
      #ask for coordinates
  end

  def display_shot_info
    #display the coordinates of shot from user
  end

  def display_the_map
    #display the ship and hit info from the board class
  end

  def computer_feedback_to_user
    #give info on whether or not the computer
    #hit or missed the player's ship
  end

  def display_computer_hits_and_misses
    #display the board with h/misses
  end

  def end_game_sequence
    #give message to user based on
    #ship.game_over
  end

  def game_time
    #calculate time elapsed
  end

  def number_of_shots
    #maybe player holds shots taken
    #this method
    #+= the shots integer
  end

end
