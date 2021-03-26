#!/usr/bin/env ruby
require_relative '../lib/displayprint'
require_relative '../lib/game'

def board_print(arrayboard = nil)
  display = Display.new
  array = if arrayboard.nil?
            display.just_board
          else
            display.transform_array(arrayboard)
          end

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

def show_game_rules
  display = Display.new
  display.display_clear
  jaarix('Game Rules!!!!')
  puts 'Press enter to continue....'
  gets
  rules
  win_one
  win_two
  win_three
  win_four
  tie_five
  game_menu
end

def rules
  display = Display.new
  display.display_clear
  jaarix('The game consist of 2 players switching turn and marking a place on a 3x3 board!')
  puts 'Press enter to continue.....'
  gets
end

def win_one
  display = Display.new
  display.display_clear
  puts 'Page 1 of 5'
  jaarix('You can win by having a line of 3 O/X like below!')
  board_print(['o', 'o', 'o', 4, 5, 6, 7, 8, 9])
  board_print(['X', 2, 3, 'X', 5, 6, 'X', 8, 9])
  puts 'Press enter to continue.....'
  gets
end

def win_two
  display = Display.new
  display.display_clear
  puts 'Page 2 of 5'
  jaarix('The lines can be horizontal!')
  board_print(['X', 'X', 'X', 4, 5, 6, 7, 8, 9])
  board_print([1, 2, 3, 'O', 'O', 'O', 7, 8, 9])
  board_print([1, 2, 3, 4, 5, 6, 'O', 'O', 'O'])
  puts 'Press enter to continue.....'
  gets
end

def win_three
  display = Display.new
  display.display_clear
  puts 'Page 3 of 5'
  jaarix('Or can be vertical!')
  board_print(['O', 2, 3, 'O', 5, 6, 'O', 8, 9])
  board_print([1, 'X', 3, 4, 'X', 6, 7, 'X', 9])
  board_print([1, 2, 'O', 4, 5, 'O', 7, 8, 'O'])
  puts 'Press enter to continue.....'
  gets
end

def win_four
  display = Display.new
  display.display_clear
  puts 'Page 4 of 5'
  jaarix('You can even win if you manage do one diagonal!')
  board_print(['O', 2, 3, 4, 'O', 6, 7, 8, 'O'])
  board_print([1, 2, 'X', 4, 'X', 6, 'X', 8, 9])
  puts 'Press enter to continue.....'
  gets
end

def tie_five
  display = Display.new
  display.display_clear
  puts 'Page 5 of 5'
  jaarix('If no one can complete a line of 3 is a tie!')
  board_print(%w[O X O O O X X X O])
  puts 'Press enter to continue to menu.....'
  gets
end

def end_game?
  board_print(@game_logic.only_board)
  puts 'Dou you want to start a new game?(Y/N):'
  puts '1. Yes'
  puts '2. No'
  answ = number_checker(gets.chomp.to_i, 1, 2)
  case answ
  when 1
    call_game
  when 2
    game_menu
  end
end

def take_turns
  game = 0
  @game_logic.next_player

  while game.zero?
    display = Display.new
    display.display_clear
    board_print(@game_logic.only_board)
    puts '+-----------------------------------------------------------+'
    puts "It is #{@game_logic.p_player} turn:"
    puts 'Please select any valid spot or cell on the board to play'
    player_asw = number_checker(gets.chomp.to_i, 1, 9)
    player_turns_done(player_asw, @game_logic.p_symbol)

    game = @game_logic.game_ended?
    @game_logic.next_player if game.zero?
  end
  end_game_message(game)
  end_game?
end

def end_game_message(game)
  display = Display.new
  display.display_clear
  if game == 3
    jaarix('Its a tie, booo no one won!!!!!')
  else
    jaarix("Congratulations player #{@game_logic.p_player} you are super!!!!!")
  end
end

def player_turns_done(asnw, symbol)
  while @game_logic.only_board.none?(asnw)
    puts 'The location selected is not available, please select another one:'
    asnw = number_checker(gets.chomp.to_i, 1, 9)
  end
  @game_logic.only_board[asnw - 1] = symbol
end

def display_credits
  display = Display.new
  display.display_clear
  bigtictactou
  puts '+----------------------------------------------------------------------------------+'
  puts '|       Thank you for playing the game!                                            |'
  puts '|            v                                                                     |'
  puts '|                                                                                  |'
  puts '|          (°v°)                                           BY:                     |'
  puts '|         /|-=-|\                                          JAAR                    |'
  puts '|         ( _=_ )                                          ERI                     |'
  puts '|          ^^ ^^                                                        MICROVERSE |'
  puts '+----------------------------------------------------------------------------------+'
  puts 'Press any key to go back to menu....'
  gets
  game_menu
end

def bigtictactou
  puts '+----------------------------------------------------------------------------------+'
  puts '|   lllllllllllllll       ]llllllllllllllL           }lllllllllllllj               |'
  puts '|   lllll||||||llll       Jllll|l||||||llL           lllll||||l|llll               |'
  puts '|        ||||l  www  ,wyww,    l||||L  wwwwww   ,wwww,    L||||  ,wwww,  ;wwwww,   |'
  puts '|        l|||l  lll ||||jl|j   ll|||L  ||l||l  l|lrl||L   ||||l jlll*|ll ||||***   |'
  puts '|        |||||  l|l ||||       ll|||L ;||ll||L ||lL       L|||l ]||l ||l ||||ll    |'
  puts '|        |||||  l|l ||||J$$%   l||||L $|ll$||l l|lL$$$L   L|||l ]||l,||l ||||,,,   |'
  puts '|        YWWWW  WWW  "4&l&*`   YWWWWL WWW""WW&  *&&lW*    YWWWW  lY&l&M  !WWWWWF   |'
  puts '+----------------------------------------------------------------------------------+'
end

def start_screen()
  display = Display.new
  display.display_clear
  jaarix('Welcome to Tic-Tac-Toe game, play fair and win')
  board_print

  puts 'Press enter to conitnue...'
  gets.chomp
  game_menu
end

def game_menu
  display = Display.new
  display.display_clear
  jaarix('This the game menu please choose an option')
  menu_text
  asw = number_checker(gets.chomp.to_i, 1, 4)
  case asw
  when 1
    call_game
  when 2
    show_game_rules
  when 3
    display_credits
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

def end_game
  display = Display.new
  display.display_clear
  jaarix('Good Bye!!')
end

def call_game
  display = Display.new
  display.display_clear
  jaarix('Lets Get Started!!')
  puts '+----------------------------------------------+'
  puts 'Player Number one please enter your name :'
  player_one = player_name_check(gets.chomp)
  puts '+----------------------------------------------+'
  puts 'Player Number two please enter your name :'
  player_two = player_name_check(gets.chomp)
  @game_logic = Game.new(player_one, player_two)
  take_turns
end

def number_checker(menu_input, initial, last)
  until !menu_input.nil? && menu_input.is_a?(Integer) && menu_input >= initial && menu_input <= last
    print "Please enter only numbers beetwen #{initial} and #{last} please!! :"
    menu_input = gets.chomp.to_i
  end
  menu_input
end

def player_name_check(input)
  while input.nil? || input.length.zero?
    puts 'Please enter a valid name, empty value not accepted'
    input = gets.chomp
  end
  input
end

start_screen
