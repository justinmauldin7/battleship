class Player

  def initialize
    @player_ships = 2,
    @player_shots = player_shots
  end

  def human_takes_a_shot(input)

    loop do #until return is hit or miss
      if @human_board.template[input].state == "E" ||
      @human_board.template[input].shot_status == "H"
      break
    end

    if @human_board.template[input].shot_status == nil
      if @human_board.template[input].state == "E"
      @human_board.template[input].shot_status == "M"
    elsif @human_board.template[input].state == "F"
      @human_board.template[input].shot_status == "H"
    else
      puts "Please try another coordinate: "
    end
  end

  def computer_takes_a_shot(convert_coordinate)

    loop do #until return is hit or miss
      if @computer_board.template[input].state == "E" ||
      @computer_board.template[input].shot_status == "H"
      break
    end

    if @computer_board.template[input].shot_status == nil
      if @computer_board.template[input].state == "E"
      @computer_board.template[input].shot_status == "M"
      elsif @computer_board.template[input].state == "F"
      @computer_board.template[input].shot_status == "H"
    # else
    #   puts "Please try another coordinate: "
    end
  end
end
