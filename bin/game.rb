require_relative 'menu.rb'

module Play_Game
  class Game
    def initialize(player1, player2)
      @first_player = player1
      @second_player = player2
      @get_current_player = nil
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def take_turns(_player_turn)
      player_turn = turn.new
      take_turns.display_clear
      puts '+----------------------------------------------+'
      puts 'It is #{first_player} turn:'
      first_player = first_player(gets.chomp)
      puts 'Please select any valid spot or cell on the board to play'
      puts '+----------------------------------------------+'
      puts 'It is #{second_player} turn:'
      second_player = second_player(gets.chomp)
      puts 'Please select any valid spot or cell on the board to play'
    end

    def game_turn_checker(_item, _symbol)
      @game_turn_checker_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      # create an any method
      @game_turn_checker_array.each_with_index do |_item, index|
        @game_turn_checker_array = [] if index + 1 == input
      end
      print # first_player choosed spot 2
    end

    def player_turns
      @get_current_player = first_player
      # until # when board is completed for the rounds
      # take_turns(get_current_player)
      # break if when board is completed for the rounds
      # @get_current_player = next_player
      # end
    end

    def next_player
      if get_current_player == first_player
        second_player
      else
        first_player
      end
    end

    def input_value_move; end
  end
end
