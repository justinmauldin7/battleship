require './lib/game'
require './lib/board'
require './lib/spaces'

class Game
  attr_accessor :number_of_players,
                :board_size,
                :number_of_ships,
                :game_time
                :human_board
                :computer_board

  def initialize
    @number_of_players = number_of_players
    @board_size = board_size
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
          @number_of_ships.times do |method|
          human_ship_placement
          end
          computer_ship_placement

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

  def computer_ship_placement
    #get_random_coordinates_for_computer_player
    two_space_ships =
     ["a1 a2", "a2 a3", "a3 a4", "b1 b2", "b2 b3", "b3 b4",
      "c1 c2", "c2 c3", "c3 c4", "d1 d2", "d2 d3", "d3 d4",
      "a1 b1", "b1 c1", "c1 d1", "a2 b2", "b2 c2", "c2 d2",
      "a3 b3", "b3 c3", "c3 d3", "a4 b4", "b4 c4", "c4 d4"
      ]

    three_space_ships = ["b2 c2 d2", "b3 c3 d3", "b4 c4 d4"]
    randomizer = Random.new
    random_index_1 = randomizer.rand(0..2)
    two_ship_array = two_space_ships.values_at(random_index_1)
    #split_ship_array_and_convert_to_symbol(ship_array)
    two_ship_string = two_ship_array[0]
    two_ship_split = two_ship_string.split(" ")

    convert_coordinate_1 = two_ship_split.map do |index|
      index.to_sym
    end
    #change_the_state(convert_coordinate)
    convert_coordinate_1.each do |key|
      chosen_state = @computer_board.template[key]
      chosen_state.state = "F"
    end

    random_index_2 = randomizer.rand(0..2)
    three_ship_array = three_space_ships.values_at(random_index_2)
    three_ship_string = three_ship_array[0]
    three_ship_split = three_ship_string.split(" ")


    convert_coordinate_2 = three_ship_split.map do |index|
      index.to_sym
    end

    convert_coordinate_2.each do |key|
      chosen_state = @computer_board.template[key]
      chosen_state.state = "F"
    end
  end
  #---------------------------------------------
  # helper methods that go into computer_ship_placement
  #---------------------------------------------
  def get_random_coordinates_for_computer_player
    #number_of_ships_possible_in_battleship = 6
      if @ship_length == 2
        spaces_for_ship =
         ["a1 a2", "a2 a3", "a3 a4", "b1 b2", "b2 b3", "b3 b4",
          "c1 c2", "c2 c3", "c3 c4", "d1 d2", "d2 d3", "d3 d4",
          "a1 b1", "b1 c1", "c1 d1", "a2 b2", "b2 c2", "c2 d2",
          "a3 b3", "b3 c3", "c3 d3", "a4 b4", "b4 c4", "c4 d4"
          ]
      elsif @ship_length == 3
        spaces_for_ship = ["b2 c2 d2", "b3 c3 d3", "b4 c4 d4"]
      end
    randomizer = Random.new
    random_index = randomizer.rand(0..2)
    ship_array = spaces_for_ship.values_at(random_index)
    split_ship_array_and_convert_to_symbol(ship_array)
  end

  def split_ship_array_and_convert_to_symbol(ship_array)
    ship_string = ship_array[0]
    ship_split = ship_string.split(" ")
    @ship_length = ship_split.count
      convert_coordinate = ship_split.map do |index|
        index.to_sym
      end
      convert_coordinate
  end

  def change_the_state(convert_coordinate)
    convert_coordinate_2.each do |key|
      chosen_state = @computer_board.template[key]
      chosen_state.state = "F"
    end
  end

#---------------------------------------------
#---------------------------------------------

  def human_ship_placement
    #ask_for_coordinates_from_players
    #convert_coordinate(coordinates)
    #change_space_state_for_player_1(converted)
    puts "Please enter the coordinates for your ship to be placed on the board. "
    user_input = gets.chomp.downcase
    coordinates = user_input.split(" ")

    convert_coordinate = coordinates.map do |index|
      index.to_sym
    end

    convert_coordinate.each do |key|
      chosen_state = @human_board.template[key]
      chosen_state.state = "F"
    end
  end
#---------------------------------------------
# helper methods that go into human_ship_placement
#---------------------------------------------
  def ask_for_coordinates_from_players
    puts "Please enter the coordinates for your ship to be placed on the board. "
    user_input = gets.chomp.downcase
    coordinates = user_input.split(" ")
  end

  def convert_coordinate(coordinates)
    coordinates.map do |index|
    converted = index.to_sym
    end
  end

  def change_space_state_for_player_1(converted)
    converted.each do |key|
    chosen_state = @human_board.template[key]
    chosen_state.state = "F"
      end
  end
#---------------------------------------------
#---------------------------------------------

def coordinates_validation
  #need a method for placement validation
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
