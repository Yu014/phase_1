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
    fix_ind = 0 
    var_ind = 0
    words = @@boards_templates[0].length

    while var_ind < words
      word = @@boards_templates[fix_ind][var_ind]
      var_ind = var_ind + 1

      master = complete_board!.each_slice(5).to_a
      indx = 0
      fila = 0
      elements = master.length - 1

      while fila <= elements
        if (master[indx].join("") == word) == true 
        p "The word #{word} was found horizontally"
        elsif master[indx].join("").reverse.include?(word) == true 
        p "The word #{word} was found horizontally"
        end
        fila = fila += 1
        indx = indx += 1
      end
    end
  end

  def vertical
    fix_ind = 0 
    var_ind = 0
    words = @@boards_templates[0].length

    while var_ind < words
      word = @@boards_templates[fix_ind][var_ind]
      var_ind = var_ind + 1

      master = complete_board!.each_slice(5).to_a.transpose
      indx = 0
      column = 0
      elements = 4

      while column <= elements
        if master[indx].join("").include?(word) == true 
        p "The word #{word} was found vertically"
        elsif master[indx].join("").reverse.include?(word) == true 
        p "The word #{word} was found vertically"
        end
        column = column += 1
        indx = indx += 1
      end
    end
  end

  def diagonal
    fix_ind = 0 
    var_ind = 0
    words = @@boards_templates[0].length

    while var_ind < words
      word = @@boards_templates[fix_ind][var_ind]
      var_ind = var_ind + 1

      master = complete_board!.each_slice(5).to_a
      filas = 7
      init = 4
      fila = 4
      columna = 0
      columnas = 4
      start =  4
      zero = 0
      
      while init <= filas
        # "Itera en la fila: #{init}."
        something = ""
        top = (fila - columnas)
        while fila >= top
          # p "Top right now is #{top}"
          # p "Fila: #{fila}"
          # p "Columna: #{columna}"
          something << master[fila][columna]
          if something.include?(word) == true
            p "The word #{word} was found diagonally"
          elsif something.reverse.include?(word) == true
            p "The word #{word} was found diagonally"
          end
          fila = fila -= 1
          columna = columna += 1
        end
        init = init += 1
        fila = start += 1
        columna = zero
      end
    end
  end

   def include?
     horizontal
     vertical
     diagonal
   end

  private

  def complete_board!
    @@boards_templates[1].scan(/./).each { |char| char.gsub!("X", [*('A'..'Z')].sample ) }
  end
end

board = Board.new
puts board.to_s
# puts board.word
# board.horizontal
# board.vertical
# board.diagonal
puts board.include?
