class Board
@@boards_templates =  
  # [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  # [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
  def initialize
     complete_board!
  end

  def to_s
    init = 0
    jump = 4
    total = complete_board!.length
    while init <= total
      complete_board![init..jump].each { |element| printf("%-4s", "#{element}") }
      printf "\n"
      init = jump + 1
      jump = jump + 5
    end
  end

  def word
    fix_ind = 0 
    var_ind = 0
    elements = @@boards_templates[0].length
    while var_ind < elements
      p @@boards_templates[fix_ind][var_ind].split(//)
      var_ind = var_ind + 1
    end
  end

  def horizontal
    # zero = 0
    # lines = 
    # if complete_board![0..4] == @@boards_templates[0][0].split(//)
    #   "The word #{@@boards_templates[0][0]} was found horizontally"
    # end
  end

  # def vertical
  #   p word
  # end

  # def diagonal
  #   p word
  # end

  def include?(word)
    p word
  end

  private

  def complete_board!
    @@boards_templates[1].scan(/./).each { |char| char.gsub!("X", [*('A'..'Z')].sample ) }
  end
end

board = Board.new
puts board.to_s
puts board.word
# p board.horizontal
# puts board.include?("POEMA")
