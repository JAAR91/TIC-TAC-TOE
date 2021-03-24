require_relative 'displayprint.rb'
require_relative 'game.rb'

class Menu
  def game_menu
    display = Display.new
    display.display_clear
    display.jaarix('This the game menu please choose an option')
    puts '--->Menu(Enter a number)'
    puts '1.- Start Game'
    puts '2.- Instructions'
    puts '3.- Credits'
    puts '4.- Exit'
  end

  def player_name_check(input)
    while input.nil? || input.length.zero?
      puts 'Please enter a valid name, empty value not accepted'
      input = gets.chomp
    end
    input
  end

  def menu_checker(menu_input)
    checker = false
    while checker == false
      puts 'Please enter only numbers'
      menu_input = gets.chomp.to_i
      checker = true if !menu_input.nil? && menu_input.is_a?(Integer) && menu_input.positive? && menu_input < 5
    end
    menu_input
  end
end
