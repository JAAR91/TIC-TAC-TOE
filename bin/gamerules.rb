require_relative 'displayprint'
require_relative 'menu'

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
    win_one
    win_two
    win_three
    win_four
    tie_five
    menu = Menu.new
    menu.game_menu
  end

  def rules
    @display.display_clear
    @display.jaarix('The game consist on 2 players switching turn and marking a place on a 3x3 board!')
    puts 'Press enter to continue.....'
    gets
  end

  def win_one
    @display.display_clear
    puts 'Page 1 of 5'
    @display.jaarix('You can win by having a line of 3 O/X like below!')
    @display.board_print(['o', 'o', 'o', 4, 5, 6, 7, 8, 9])
    @display.board_print(['X', 2, 3, 'X', 5, 6, 'X', 8, 9])
    puts 'Press enter to continue.....'
    gets
  end

  def win_two
    @display.display_clear
    puts 'Page 2 of 5'
    @display.jaarix('The lines can be horizontal!')
    @display.board_print(['X', 'X', 'X', 4, 5, 6, 7, 8, 9])
    @display.board_print([1, 2, 3, 'O', 'O', 'O', 7, 8, 9])
    @display.board_print([1, 2, 3, 4, 5, 6, 'O', 'O', 'O'])
    puts 'Press enter to continue.....'
    gets
  end

  def win_three
    @display.display_clear
    puts 'Page 3 of 5'
    @display.jaarix('Or can be vertical!')
    @display.board_print(['O', 2, 3, 'O', 5, 6, 'O', 8, 9])
    @display.board_print([1, 'X', 3, 4, 'X', 6, 7, 'X', 9])
    @display.board_print([1, 2, 'O', 4, 5, 'O', 7, 8, 'O'])
    puts 'Press enter to continue.....'
    gets
  end

  def win_four
    @display.display_clear
    puts 'Page 4 of 5'
    @display.jaarix('You can even win if you manage do one diagonal!')
    @display.board_print(['O', 2, 3, 4, 'O', 6, 7, 8, 'O'])
    @display.board_print([1, 2, 'X', 4, 'X', 6, 'X', 8, 9])
    puts 'Press enter to continue.....'
    gets
  end

  def tie_five
    @display.display_clear
    puts 'Page 5 of 5'
    @display.jaarix('If no one can complete a line of 3 is a tie!')
    @display.board_print(%w[O X O O O X X X O])
    puts 'Press enter to continue to menu.....'
    gets
  end
end
