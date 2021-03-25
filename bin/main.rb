require_relative 'displayprint'
require_relative 'game'
require_relative 'menu'

def start_screen()
  display = Display.new
  display.display_clear
  display.jaarix('Welcome to Tic-Tac-Toe game, play fair and win')
  display.board_print

  puts 'Press enter to conitnue...'
  gets.chomp

  menu = Menu.new
  menu.game_menu
end

start_screen
