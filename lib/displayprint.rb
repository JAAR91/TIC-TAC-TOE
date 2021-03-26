class Display
  require 'rbconfig'
  include RbConfig

  def initialize
    @array = [['+---+---+---+'],
              ['| ', 1, ' | ', 2, ' | ', 3, ' |'],
              ['+---+---+---+'],
              ['| ', 4, ' | ', 5, ' | ', 6, ' |'],
              ['+---+---+---+'],
              ['| ', 7, ' | ', 8, ' | ', 9, ' |'],
              ['+---+---+---+']]
  end

  def just_board
    @array
  end

  def transform_array(array)
    board_new = @array

    board_new[1][1] = array[0]
    board_new[1][3] = array[1]
    board_new[1][5] = array[2]
    board_new[3][1] = array[3]
    board_new[3][3] = array[4]
    board_new[3][5] = array[5]
    board_new[5][1] = array[6]
    board_new[5][3] = array[7]
    board_new[5][5] = array[8]

    board_new
  end

  def display_clear
    case CONFIG['host_os']
    when /mswin|windows/i
      system('clr')
    when /linux|arch/i
      system('clear')
    end
  end
end
