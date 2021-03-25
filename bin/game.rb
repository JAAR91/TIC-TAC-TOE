# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

require_relative 'menu'
require_relative 'displayprint'
require_relative 'inputchecker'

class Game
  def initialize(player1, player2)
    @first_player = player1
    @second_player = player2
    @symbol = 'X'
    @current_player = nil
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @display = Display.new
  end

  def take_turns
    game = 0
    @current_player = @first_player if @current_player.nil?

    while game.zero?
      @display.display_clear
      @display.board_print(@board)
      puts '+-----------------------------------------------------------+'
      puts "It is #{@current_player} turn:"
      puts 'Please select any valid spot or cell on the board to play'
      input_checker = Inputchecker.new
      player_asw = input_checker.number_checker(gets.chomp.to_i, 1, 9)
      player_turns_done(player_asw, @symbol)
      game = game_ended?
      next_player if game.zero?
    end
    end_game_message(game)
    end_game
  end

  def end_game
    @display.board_print(@board)
    puts 'Dou you want to start a new game?(Y/N):'
    puts '1. Yes'
    puts '2. No'
    input_checker = Inputchecker.new
    answ = input_checker.number_checker(gets.chomp.to_i, 1, 2)
    menu = Menu.new
    case answ
    when 1
      menu.call_game
    when 2
      menu.game_menu
    end
  end

  def end_game_message(game)
    @display.display_clear
    case game
    when 1
      @display.jaarix("Congratulations player #{@first_player} you are super!!!!!")
    when 2
      @display.jaarix("Congratulations player #{@second_player} you are super!!!!!")
    when 3
      @display.jaarix('Its a tie, booo no one won!!!!!')
    end
  end

  def game_ended?
    game = if @current_player == @first_player
             1
           else
             2
           end
    return game if @board[0] == @board[1] && @board[1] == @board[2]
    return game if @board[3] == @board[4] && @board[4] == @board[5]
    return game if @board[6] == @board[7] && @board[7] == @board[8]
    return game if @board[0] == @board[3] && @board[3] == @board[6]
    return game if @board[1] == @board[4] && @board[4] == @board[7]
    return game if @board[2] == @board[5] && @board[5] == @board[8]
    return game if @board[0] == @board[4] && @board[4] == @board[8]
    return game if @board[2] == @board[4] && @board[4] == @board[6]

    return 3 if @board.none?(Integer)

    0
  end

  def player_turns_done(asnw, symbol)
    while @board.none?(asnw)
      puts 'The location selected is not available, please select another one:'
      input_checker = Inputchecker.new
      asnw = input_checker.number_checker(gets.chomp.to_i, 1, 9)
    end
    @board[asnw - 1] = symbol
  end

  def next_player
    if @current_player == @first_player
      @current_player = @second_player
      @symbol = 'O'
    else
      @current_player = @first_player
      @symbol = 'X'
    end
  end
end

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
