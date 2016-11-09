class Board
# You should put here the given boards templates
@@boards_templates =  
  [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
  def initialize
     complete_board!
  end

  def to_s
    "try to print a board, what does this method do?"
  end

  private

  def complete_board!
        #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
  end
end

board = Board.new
puts board