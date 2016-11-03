hash = {1=>"Torre", 2=>"Caballo", 3=>"Alfil", 4=>"Rey", 5=>"Reyna", 6=>"Peón", 7=>"Blanco", 8=>"Negro"}

def fichas(hash)
  array = []
  hash.each { |key, value| 
    until (key > 5) == true
      array << "#{value}"
      break
    end
  }
  if (array.length == 5) == true
    second = array.reverse.drop(2)
  end
  (array + second).flatten
end

# p fichas(hash)


def peones(hash)
  array = []
  hash.each { |key, value| 
    if key == 6 
      8.times do array << ("#{value}") end
    end
  }
  array
end

# p peones(hash)

def casillas(hash)
  array = []
  hash.each { |key, value|
    if key == 7 
      array << ("#{value}") 
    elsif key == 8   
      array << ("#{value}") 
    end
  }
  array*4
end

# p casillas(hash)


def chess_maker(hash)
  chess = []
  chess << fichas(hash).map { |word| "#{word}-N" }
  chess << peones(hash).map { |word| "#{word}-N" }
  chess << casillas(hash)
  chess << casillas(hash).rotate
  chess << casillas(hash)
  chess << casillas(hash).rotate
  chess << peones(hash).map { |word| "#{word}-B" }
  chess << fichas(hash).map { |word| "#{word}-B" }

end

p chess_maker(hash) == [["Torre-N", "Caballo-N", "Alfil-N", "Rey-N", "Reyna-N", "Alfil-N", "Caballo-N", "Torre-N"],
                        ["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
                        ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
                        ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
                        ["Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro"],
                        ["Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco", "Negro", "Blanco"],
                        ["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B"],
                        ["Torre-B", "Caballo-B", "Alfil-B", "Rey-B", "Reyna-B", "Alfil-B", "Caballo-B", "Torre-B"]]
