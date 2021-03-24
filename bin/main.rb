#!/usr/bin/env ruby
require 'rbconfig'
include RbConfig

def print_game(array)
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

def game_info(p1, p2)
  m_line = []
  n_size = 0
  n_size = if p1.length > p2.length
             p1.length
           else
             p2.length
           end
  (n_size + 19).times { |_i| m_line.push('-') }
  print '+'
  m_line.each { |item| print item }
  puts '+'
  puts "|Player number one: #{p1}"
  puts "|Player number two: #{p2}"
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

def screenclear
  case CONFIG['host_os']
  when /mswin|windows/i
    system('cls')
  when /linux|arch/i
    system('clear')
  when /darwin/i
    system('clear')
  end
end

gamearray = [['+---+---+---+'], ['| ', 1, ' | ', 2, ' | ', 3, ' |'], ['+---+---+---+'], ['| ', 4, ' | ', 5, ' | ', 6, ' |'], ['+---+---+---+'], ['| ', 7, ' | ', 8, ' | ', 9, ' |'], ['+---+---+---+']]
first_player = ''
second_player = ''
m_asw = 0
while m_asw != 4
  screenclear
  jaarix('Welcome to Tic-Tac-Toe game, play fair and win')
  print_game(gamearray)

  # main menu, this let you choose wich option of the game you want to see

  puts '--->Menu(Enter a number)'
  puts '1.- Start Game'
  puts '2.- Instructions'
  puts '3.- Credits'
  puts '4.- Exit'
  m_asw = gets.chomp.to_i

  case m_asw
  when 1
    screenclear
    jaarix('Please enter your name Player one?:')
    first_player = gets.chomp
    first_player.capitalize!

    screenclear
    game_info(first_player, second_player)
    jaarix('Please enter your name Player Two?:')
    second_player = gets.chomp
    second_player.capitalize!

    screenclear
    game_info(first_player, second_player)
    puts 'Let the game begin!!!!'
    jaarix("#{first_player} will be using the X  and #{second_player} will be using the O !!")
    puts 'Press enter to continue'
    p_enter = gets

    screenclear
    game_info(first_player, second_player)
    game_asw = 0

    print_game(gamearray)
    puts 'Please select an available spot from the board'
    game_asw = gets.chomp.to_i

    p_enter = gets
    # here comes the game logic

  when 2
    # game instrucctions will show up here
    screenclear
    jaarix('Game instructions are under development please wait....')
    puts 'Press enter to go back to the menu'
    p_enter = gets
  when 3
    # game credits will show up here
    screenclear
    jaarix('Game Credits are under development please wait....')
    puts 'Press enter to go back to the menu'
    p_enter = gets
  when 4
    screenclear
    jaarix('Good Bye!')
  end
end
