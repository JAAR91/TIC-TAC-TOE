require_relative 'menu.rb'

module Play_Game

    class Game

    def initialize
        @first_player = 
        @second_player = 
        @get_current_player = []
        @board = 
    end

    def take_turns(player_turn)
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

      def game_turn_checker()
        game_turn_checker = false
        while game_turn_checker == false
          print "Please enter only numbers beetwen #{initial} and #{last} please!! :"
          game_turn_checker = true if
        end
      end
    
    
    end
 
















#create  A WHILE TO CHANGE B/W player one and two