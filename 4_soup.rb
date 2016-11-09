class Board
# You should put here the given boards templates
@@boards_templates =  
  [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  # [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  # [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
  def initialize
     complete_board!
  end

  def to_s
    # complete_board![0]
    # complete_board!.each {|char| char}

    puts complete_board![0..4].join("  ")
    puts complete_board![5..9].join("  ")
    puts complete_board![10..14].join("  ")
    puts complete_board![15..19].join("  ")
    puts complete_board![20..24].join("  ")
    puts complete_board![25..29].join("  ")
    puts complete_board![30..34].join("  ")
    puts complete_board![35..39].join("  ")

    # zero = 0
    # jump = 4
    # total = complete_board!.length
    # last = ""

    # complete_board! do |element|
    #   p element
    # end

  end

  private

  def complete_board!
    @@boards_templates[1].scan(/./).each { |char| char.gsub!("X", [*('A'..'Z')].sample ) }
  end
end

board = Board.new
board.to_s

# class Dog
# end

# doggy = Dog.new
# puts doggy