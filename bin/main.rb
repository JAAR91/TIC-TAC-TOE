#!/usr/bin/env ruby

puts "Welcome to Tic-Tac-Toe game, play fair and win"

print "Enter your name Player one"
first_player = gets.chomp
first_player.capitalize!

print "Enter your name Player Two"
second_player = gets.chomp
second_player.capitalize!

puts "Let the game begin #{first_player} is X  and #{second_player} is O "


