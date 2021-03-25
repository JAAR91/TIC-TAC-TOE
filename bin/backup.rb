# !/usr/bin/env ruby

def start_screen
  m_asw = 0
  while m_asw != 4
    jaarix('Welcome to Tic-Tac-Toe game, play fair and win')
    print_game
    m_asw = menu
    case m_asw
    when 1
      game_start
    when 2
      game_instructions
    when 3
      game_credits
    when 4
      jaarix('Good Bye!')
    end
  end
end

def menu
  # main menu, this let you choose wich option of the game you want to see
  puts '--->Menu(Enter a number)'
  puts '1.- Start Game'
  puts '2.- Instructions'
  puts '3.- Credits'
  puts '4.- Exit'
  menu_checker(gets.chomp)
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

def game_start
  jaarix('Please enter your name Player one?:')
  first_player = player_name_check(gets.chomp)
  first_player.capitalize!

  second_player = ''
  game_info(first_player, second_player)
  jaarix('Please enter your name Player Two?:')
  second_player = player_name_check(gets.chomp)
  second_player.capitalize!

  game_info(first_player, second_player)
  puts 'Let the game begin!!!!'
  jaarix("#{first_player} will be using the X  and #{second_player} will be using the O !!")
  puts 'Press enter to continue'

  game_info(first_player, second_player)

  print_game
  puts 'Please select an available spot from the board'
  # here we will assing aswer to a variable

  # here comes the game logic
end

def game_instructions
  # game instrucctions will show up here
  jaarix('Game instructions are under development please wait....')
  puts 'Press enter to go back to the menu'
  gets
end

def game_credits
  # game credits will show up here
  jaarix('Game Credits are under development please wait....')
  puts 'Press enter to go back to the menu'
  gets
end

def print_game
  array = [['+---+---+---+'],
           ['| ', 1, ' | ', 2, ' | ', 3, ' |'],
           ['+---+---+---+'],
           ['| ', 4, ' | ', 5, ' | ', 6, ' |'],
           ['+---+---+---+'],
           ['| ', 7, ' | ', 8, ' | ', 9, ' |'],
           ['+---+---+---+']]
  puts ''
  puts array[0]
  array[1].each { |item| print item }
  puts ''
  puts array[2]
  array[3].each { |item| print item }
  puts ''
  puts array[4]
  array[5].each { |item| print item }
  puts ''
  puts array[6]
  puts ''
end

def game_info(player1, player2)
  m_line = []
  n_size = if player1.length > player2.length
             player1.length
           else
             player2.length
           end
  (n_size + 19).times { |_i| m_line.push('-') }
  print '+'
  m_line.each { |item| print item }
  puts '+'
  puts "|Player number one: #{player1}"
  puts "|Player number two: #{player2}"
  print '+'
  m_line.each { |item| print item }
  puts '+'
end

# print messages using this project brand character
def jaarix(input)
  array = [' (°v°)  ', '/|-=-|\ ', '( _=_ ) ', ' ^^ ^^']
  m_line = []
  input.length.times { |_i| m_line.push('-') }
  print '+'
  m_line.each { |item| print item }
  puts '+'
  puts "|#{input}|"
  print '+'
  m_line.each { |item| print item }
  puts '+'
  puts '   v'
  puts ''
  puts array[0]
  puts array[1]
  puts array[2]
  puts array[3]
end

jaarix('Hello there')
