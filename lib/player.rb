require './lib/spaces'
require './lib/board'
require './lib/game'

class Player

  def initialize
    @player_ships = 2
    # @player_shots = player_shots
  end

  def human_takes_a_shot(input)

    loop do #until return is hit or miss
      if @human_board.template[input].shot_status == "M" ||
      @human_board.template[input].shot_status == "H"
      break
    end

    if @human_board.template[input].shot_status == nil
      if @human_board.template[input].state == "E"
        @human_board.template[input].shot_status == "M"
      else
        @human_board.template[input].state == "F"
        @human_board.template[input].shot_status == "H"
      end
    else
      puts "Please try another coordinate to take a shot at your opponent: "
    end
  end
  end

  def computer_takes_a_shot(convert_coordinate)

    spaces_for_shot = [
       "a1", "a2", "a3", "a4",
       "b1", "b2", "b3", "b4",
      "c1", "c2", "c3", "c4",
      "d1", "d2", "d3", "d4"
      ]

    shot_randomizer = Random.new
    shot_random_index = shot_randomizer.rand(0..15)
    shot_array = spaces_for_shot.values_at(shot_random_index)

    shot_symbol = shot_array.to_sym



    loop do #until return is hit or miss
      if @computer_board.template[shot_symbol].shot_status == "M" ||
      @computer_board.template[shot_symbol].shot_status == "H"
      break
      end

    if @computer_board.template[shot_symbol].shot_status == nil
      if @computer_board.template[shot_symbol].state == "E"
        @computer_board.template[shot_symbol].shot_status == "M"
      else
       @computer_board.template[shot_symbol].state == "F"
       @computer_board.template[shot_symbol].shot_status == "H"
     end
    end
    end
  end
end
