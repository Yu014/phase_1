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
  array + second.flatten
end

# p fichas(hash)


def peones(hash)
  array = []
  hash.each { |key, value| 
    if key == 6 
      8.times do array << ("#{value}".ljust(5)) end
    end
  }
  array
end

# p peones(hash)

def casillas(hash)
  array = []
  hash.each { |key, value|
    if key == 7 
      array << ("#{value}".ljust(7))
    elsif key == 8   
      array << ("#{value}".ljust(7)) 
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

  chess.each { |x| puts "#{x}" }

end

chess_maker(hash)

# p chess_maker(hash)[0]
# p chess_maker(hash)[1]
# p chess_maker(hash)[2]
# p chess_maker(hash)[3]
# p chess_maker(hash)[4]
# p chess_maker(hash)[5]
# p chess_maker(hash)[6]
# p chess_maker(hash)[7]