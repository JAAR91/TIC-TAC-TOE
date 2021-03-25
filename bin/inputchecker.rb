class Inputchecker
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

  def new_game?(input)
    while input..nil? || input.length.zero? || input != 'Y' || input != 'N'
      puts 'Please enter a valid Answer (Y/N)!'
      input = gets.chomp.upcase
    end
    input
  end
end
