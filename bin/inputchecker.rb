class Inputchecker
    def number_checker(menu_input, initial, last)
        until !menu_input.nil? && menu_input.is_a?(Integer) && menu_input >= initial && menu_input <= last
          print "Please enter only numbers beetwen #{initial} and #{last} please!! :"
          menu_input = gets.chomp.to_i
        end
        menu_input
      end
end