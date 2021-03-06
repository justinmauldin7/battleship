require './lib/game'
require './lib/board'
require './lib/spaces'
require './lib/player'
require 'pry'

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
      puts "I have laid out my ships on the grid."
      puts "You now need to layout your two ships."
      puts "The first is two units long and the second is three units long."
      puts "The grid has A1 at the top left and D4 at the bottom right."
      puts " "

      @number_of_ships.times do |method|
        computer_ship_placement
      end

      @number_of_ships.times do |method|
        human_ship_placement
      end

      @human_board.print_the_ships
      human_player = Player.new
      computer_player = Player.new

      loop do
        if human_player.player_hits == 5 || computer_player.player_hits == 5
          end_game_sequence
          break
        end
        puts "Please enter a coordinate: "
        input = gets.chomp.to_sym
        human_player.human_takes_a_shot(input, @computer_board)
        @computer_board.print_the_grid
        computer_player.computer_takes_a_shot(@human_board)
        @human_board.print_the_grid
        end

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
    ship_array = get_random_coordinates_for_computer_player
    computer_convert_coordinate = split_ship_array_and_convert_to_symbol(ship_array)
    # computer_validated = cannot_overlap(convert_coordinate)
    # change_the_state(computer_validated)
    change_the_state(computer_convert_coordinate)
  end
  #---------------------------------------------
  # helper methods that go into computer_ship_placement
  #---------------------------------------------
  def get_random_coordinates_for_computer_player
    #number_of_ships_possible_in_battleship = 6
      # if @ship_length == 2
        spaces_for_ship = [
           "a1 a2", "a2 a3", "a3 a4", "b1 b2", "b2 b3", "b3 b4",
          "c1 c2", "c2 c3", "c3 c4", "d1 d2", "d2 d3", "d3 d4",
          "a1 b1", "b1 c1", "c1 d1", "a2 b2", "b2 c2", "c2 d2",
          "a3 b3", "b3 c3", "c3 d3", "a4 b4", "b4 c4", "c4 d4"
          ]
      # elsif @ship_length == 3
        spaces_for_ship = [
          "a1 b1 c1", "a2 b2 c2", "a3 b3 c3", "a4 b4 c4",
          "b1 c1 d1", "b2 c2 d2", "b3 c3 d3", "b4 c4 d4",
          "a1 a2 a3", "b1 b2 b3", "c1 c2 c3", "d1 d2 d3",
          "a2 a3 a4", "b2 b3 b4", "c2 c3 c4", "d2 d3 d4"
        ]
      # end
    randomizer = Random.new
    random_index = randomizer.rand(0..2)
    ship_array = spaces_for_ship.values_at(random_index)
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

  def change_the_state(computer_validated)
    computer_validated.each do |key|
      chosen_state = @computer_board.template[key]
      chosen_state.state = "F"
    end
  end

#---------------------------------------------
#---------------------------------------------

  def human_ship_placement
    coordinates = ask_for_coordinates_from_players
    human_validated_1 = cannot_overlap(coordinates)
    valid_human_coordinates = horizontal_or_vertical(human_validated_1)
    converted = convert_coordinate(valid_human_coordinates)
    change_space_state_for_human_player(converted)


  end
#---------------------------------------------
# helper methods that go into human_ship_placement
#---------------------------------------------
  def ask_for_coordinates_from_players
    puts "Please enter the coordinates for your ship to be placed on the board. "
    user_input = gets.chomp.downcase
    coordinates = user_input.split(" ")
  end

  def convert_coordinate(valid_human_coordinates)
    converted = valid_human_coordinates.map do |index|
      index.to_sym
    end
    converted
  end

  def change_space_state_for_human_player(human_validated)
    human_validated.each do |key|
    chosen_state = @human_board.template[key]
    chosen_state.state = "F"
      end
  end



  def coordinates_validation
    cannot_overlap
    cannot_go_over_board
    #horizontal_or_vertical & next_to_each_other
  end

  def ask_for_correct_coordinates
    puts "Please enter a set of valid coordinates. "
    #user_input = gets.chomp.downcase
    #coordinates = user_input.split(" ")
    human_ship_placement
  end
#---------------------------------------------
# Helper methods that go with coordinate_validation
#---------------------------------------------

def cannot_overlap(human_or_computer_coordinates)
  if human_or_computer_coordinates.uniq == human_or_computer_coordinates
    puts "Passes validation 1"
    human_validated_1 = human_or_computer_coordinates.uniq
  else
    ask_for_correct_coordinates
  end
end

def cannot_go_over_board
  #use select to see if coordinate given is in the list of possible coordinates in two_ship & three_ship

end

def horizontal_or_vertical(human_or_computer_coordinates)
    get_array_values = human_or_computer_coordinates.map.with_index do |value, index|
    value.partition(/[[:alpha:]]/)
    end

    converted = human_or_computer_coordinates.map do |index|
      index.to_sym
    end

    valid_human_array = []

  if get_array_values.count == 2
    if get_array_values[0][1].ord == get_array_values[1][1].ord &&
      get_array_values[0][2].to_i + 1 == get_array_values[1][2].to_i
        valid_human_array <<  "#{get_array_values[0][1]}#{get_array_values[0][2]}"
        valid_human_array <<  "#{get_array_values[1][1]}#{get_array_values[1][2]}"
        puts "Passes validation 2.1"
        converted
    elsif get_array_values[0][1].ord + 1 == get_array_values[1][1].ord &&
      get_array_values[0][2].to_i == get_array_values[1][2].to_i
        valid_human_array <<  "#{get_array_values[0][1]}#{get_array_values[0][2]}"
        valid_human_array <<  "#{get_array_values[1][1]}#{get_array_values[1][2]}"
        puts "Passes validation 2.2"
        converted
    else
      ask_for_correct_coordinates
    end
  elsif get_array_values.count == 3
    if get_array_values[0][1].ord == get_array_values[1][1].ord &&
      get_array_values[1][1].ord == get_array_values[2][1].ord &&
      get_array_values[0][2].to_i + 1 == get_array_values[1][2].to_i + 1 &&
      get_array_values[1][2].to_i + 1 == get_array_values[2][2].to_i
        valid_human_array <<  "#{get_array_values[0][1]}#{get_array_values[0][2]}"
        valid_human_array <<  "#{get_array_values[1][1]}#{get_array_values[1][2]}"
        valid_human_array <<  "#{get_array_values[2][1]}#{get_array_values[2][2]}"
        puts "Passes validation 2.1"
        converted
    elsif get_array_values[0][1].ord == get_array_values[1][1].ord &&
      get_array_values[1][1].ord == get_array_values[2][1].ord &&
      get_array_values[0][2].to_i + 1 == get_array_values[1][2].to_i &&
      get_array_values[1][2].to_i + 1 == get_array_values[2][2].to_i
        valid_human_array <<  "#{get_array_values[0][1]}#{get_array_values[0][2]}"
        valid_human_array <<  "#{get_array_values[1][1]}#{get_array_values[1][2]}"
        valid_human_array <<  "#{get_array_values[2][1]}#{get_array_values[2][2]}"
        puts "Passes validation 2.2"
        converted
    else
      ask_for_correct_coordinates
    end
  end
end


  # def compare_space_status
  #   if @human_board.template[].state == "F" && @human_board.template[].shot_status == "H"
  #
  #   @computer_board.template.state
  # end

  def end_game_sequence
    puts "Thanks for playing BATTLESHIP!"
  end

  def number_of_shots
    #maybe player holds shots taken
    #this method
    #+= the shots integer
  end

end
