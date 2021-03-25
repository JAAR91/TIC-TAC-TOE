require_relative 'displayprint.rb'
require_relative 'game.rb'
require_relative 'menu.rb'

def start_screen()
  display = Display.new
  display.jaarix('Welcome to Tic-Tac-Toe game, play fair and win')
  display.board_print

  puts 'Press enter to conitnue...'
  gets
  menu = Menu.new
  menu.game_menu
end

start_screen
