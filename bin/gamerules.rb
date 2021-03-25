require_relative 'displayprint.rb'
require_relative 'menu.rb'

class Gamerules
  def initialize
    @display = Display.new
  end

  def show_game_rules
    @display.display_clear
    @display.jaarix('Game Rules!!!!')
    puts 'Press enter to continue....'
    gets
    rules
    win_1
    win_2
    win_3
    win_4
    tie_game
    menu = Menu.new
    menu.game_menu
  end

  def rules
    @display.display_clear
    @display.jaarix('The game consist on 2 players switching turn and marking a place on a 3x3 board!')
    puts 'Press enter to continue.....'
    gets
  end

  def win_1
    @display.display_clear
    puts 'Page 1 of 5'
    @display.jaarix('You can win by having a line of 3 O/X like below!')
    @display.board_print(['o', 'o', 'o', 4, 5, 6, 7, 8, 9])
    @display.board_print(['X', 2, 3, 'X', 5, 6, 'X', 8, 9])
    puts 'Press enter to continue.....'
    gets
  end

  def win_2
    @display.display_clear
    puts 'Page 2 of 5'
    @display.jaarix('The lines can be horizontal!')
    @display.board_print(['X', 'X', 'X', 4, 5, 6, 7, 8, 9])
    @display.board_print([1, 2, 3, 'O', 'O', 'O', 7, 8, 9])
    @display.board_print([1, 2, 3, 4, 5, 6, 'O', 'O', 'O'])
    puts 'Press enter to continue.....'
    gets
  end

  def win_3
    @display.display_clear
    puts 'Page 3 of 5'
    @display.jaarix('Or can be vertical!')
    @display.board_print(['O', 2, 3, 'O', 5, 6, 'O', 8, 9])
    @display.board_print([1, 'X', 3, 4, 'X', 6, 7, 'X', 9])
    @display.board_print([1, 2, 'O', 4, 5, 'O', 7, 8, 'O'])
    puts 'Press enter to continue.....'
    gets
  end

  def win_4
    @display.display_clear
    puts 'Page 4 of 5'
    @display.jaarix('You can even win if you manage do one diagonal!')
    @display.board_print(['O', 2, 3, 4, 'O', 6, 7, 8, 'O'])
    @display.board_print([1, 2, 'X', 4, 'X', 6, 'X', 8, 9])
    puts 'Press enter to continue.....'
    gets
  end

  def tie_game
    @display.display_clear
    puts 'Page 5 of 5'
    @display.jaarix('If no one can complete a line of 3 is a tie!')
    @display.board_print(%w[O X O O O X X X O])
    puts 'Press enter to continue to menu.....'
    gets
  end
end
