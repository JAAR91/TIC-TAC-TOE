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

  def board_print(array = nil)
    array = @array if array.nil?
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
