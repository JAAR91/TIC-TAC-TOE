# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

require_relative 'displayprint'

class Game
  def initialize(player1, player2)
    @first_player = player1
    @second_player = player2
    @symbol = 'X'
    @current_player = nil
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @display = Display.new
  end

  def only_board
    @board
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

  def next_player
    if @current_player == @first_player
      @current_player = @second_player
      @symbol = 'O'
    else
      @current_player = @first_player
      @symbol = 'X'
    end
  end

  def p_player
    @current_player
  end

  def p_symbol
    @symbol
  end
end

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
