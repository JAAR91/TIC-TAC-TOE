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

  def board_print(arrayboard = nil)
    array = if arrayboard.nil?
              @array
            else
              transform_array(arrayboard)
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
    when /darwin/i
      system('clear')
    end
  end
end
