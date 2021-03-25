require_relative 'displayprint.rb'
require_relative 'game.rb'

class Menu
  def game_menu
    display = Display.new
    display.display_clear
    display.jaarix('This the game menu please choose an option')
    puts '+------------------------------------+'
    puts '|------->Menu(Enter a number)<-------|'
    puts '|1.- Start Game                      |'
    puts '|2.- Instructions                    |'
    puts '|3.- Credits                         |'
    puts '|4.- Exit                            |'
    puts '+------------------------------------+'
    asw = number_checker(gets.chomp, 1, 4)
    case asw
    when 1
      call_game
    when 2

    when 3
    when 4
      end_game
    end
  end

  def call_game
    display = Display.new
    display.display_clear
    display.jaarix('Lets Get Started!!')
    puts '+----------------------------------------------+'
    puts 'Player Number one please enter your name :'
    player_one = player_name_check(gets.chomp)
    puts '+----------------------------------------------+'
    puts 'Player Number two please enter your name :'
    player_two = player_name_check(gets.chomp)
  end

  def player_name_check(input)
    while input.nil? || input.length.zero?
      puts 'Please enter a valid name, empty value not accepted'
      input = gets.chomp
    end
    input
  end

  def number_checker(menu_input, initial, last)
    checker = false
    while checker == false
      print "Please enter only numbers beetwen #{initial} and #{last} please!! :"
      menu_input = gets.chomp.to_i
      checker = true if !menu_input.nil? && menu_input.is_a?(Integer) && menu_input >= initial && menu_input <= last
    end
    menu_input
  end

  def end_game
    display = Display.new
    display.display_clear
    display.jaarix('Good Bye!!')
  end
end
