require './lib/game'
require './lib/board'
require './lib/spaces'

class Game
  attr_accessor :number_of_players,
                :boad_size,
                :number_of_ships,
                :game_time
                :human_board
                :computer_board

  def initialize
    @number_of_players = number_of_players
    @boad_size = boad_size
    @number_of_ships = 2
    @game_time = game_time
    @human_board = Board.new
    @computer_board = Board.new
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
          #create boards
          #place ships

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

  def user_input_for_coordinates
    @number_of_ships.times do |entry|
      puts "Please enter the coordinates for your ship to be placed on the board. "
      user_input = gets.chomp
      coordinates = user_input.split(" ")

      coordinates.each do |key|
        binding.pry
        @human_board.template[key]
        @human_board.template.state = "F"
        binding.pry
      end
    end
  end

def user_input_assembly(coordinates)
  #this assembles all the user_input_for_coordinates method

end

def coordinates_validation
  #need a method for placement validation
end

def ship_placement(array)
  #gets an array #["a1", "a2"]
  #retrieve ship coordinates from player for 2 ships
  #(cannot wrap around the board, cannot overlap,
  #must be veritcal or horizontal)
end


  def gets_spaces_status
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
