require_relative 'displayprint'
require_relative 'game'
require_relative 'gamerules'
require_relative 'credits'
require_relative 'inputchecker'

class Menu
  def game_menu
    display = Display.new
    display.display_clear
    display.jaarix('This the game menu please choose an option')
    menu_text
    input_checker = Inputchecker.new
    asw = input_checker.number_checker(gets.chomp.to_i, 1, 4)
    case asw
    when 1
      call_game
    when 2
      game_rules = Gamerules.new
      game_rules.show_game_rules
    when 3
      credits = Credits.new
      credits.display_credits
    when 4
      end_game
    end
  end

  def menu_text
    puts '+------------------------------------+'
    puts '|------->Menu(Enter a number)<-------|'
    puts '|1.- Start Game                      |'
    puts '|2.- Instructions                    |'
    puts '|3.- Credits                         |'
    puts '|4.- Exit                            |'
    puts '+------------------------------------+'
  end

  def call_game
    display = Display.new
    display.display_clear
    display.jaarix('Lets Get Started!!')
    puts '+----------------------------------------------+'
    puts 'Player Number one please enter your name :'
    input_checker = Inputchecker.new
    player_one = inputchecker.player_name_check(gets.chomp)
    puts '+----------------------------------------------+'
    puts 'Player Number two please enter your name :'
    player_two = inputchecker.player_name_check(gets.chomp)

    game = Game.new(player_one, player_two)
    game.take_turns
  end

  private

  def end_game
    display = Display.new
    display.display_clear
    display.jaarix('Good Bye!!')
  end
end
