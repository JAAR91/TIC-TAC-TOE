require_relative 'menu'

class Credits
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
    menu = Menu.new
    menu.game_menu
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
end
