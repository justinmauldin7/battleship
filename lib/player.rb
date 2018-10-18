require './lib/spaces'
require './lib/board'
require './lib/game'
require 'pry'

class Player
  attr_reader :player_hits

  def initialize
    @player_ships = 2
    @player_shots = 0
    @player_hits = 0
  end

  def human_takes_a_shot(input, computer_board)

    loop do #until return is hit or miss
      if computer_board.template[input].shot_status == "M" ||
      computer_board.template[input].shot_status == "H"
        break
      end

      if computer_board.template[input].shot_status == nil
        if computer_board.template[input].state == "E"
          puts "You missed on your shot."
          puts "Number of hits: #{@player_hits}"
          computer_board.template[input].shot_status = "M"

        else
          computer_board.template[input].state == "F"
          puts "Good job! You hit a ship."
          @player_hits += 1
          puts "Number of hits: #{@player_hits}"
          computer_board.template[input].shot_status = "H"
        end
      else
        puts "Please try another coordinate to take a shot at your opponent: "
      end
    end
  end

  def computer_takes_a_shot(human_board)

    spaces_for_shot = [
       "a1", "a2", "a3", "a4",
       "b1", "b2", "b3", "b4",
      "c1", "c2", "c3", "c4",
      "d1", "d2", "d3", "d4"
      ]

    shot_randomizer = Random.new
    shot_random_index = shot_randomizer.rand(0..15)
    shot_array = spaces_for_shot.values_at(shot_random_index)
    shot_symbol = shot_array[0].to_sym

    loop do #until return is hit or miss
      if human_board.template[shot_symbol].shot_status == "M" ||
      human_board.template[shot_symbol].shot_status == "H"
        break
      end

      if human_board.template[shot_symbol].shot_status == nil
        if human_board.template[shot_symbol].state == "E"
          puts "The computer missed its shot at #{shot_array[0]}."
          puts "Number of hits: #{@player_hits}"
          human_board.template[shot_symbol].shot_status = "M"
        else
         human_board.template[shot_symbol].state == "F"
         puts "The computer hit your ship with its shot at #{shot_array[0]}."
         @player_hits += 1
         puts "Number of hits: #{@player_hits}"
         human_board.template[shot_symbol].shot_status = "H"
        end
          break
      end
    end
  end
end
