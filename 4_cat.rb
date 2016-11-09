# gato = [ ["X", "X", "O"],
#          ["O", "X", "O"],
#          ["O", "O", "X"] ]

# p gato[1][2]

def gato
  hash = { 4 => "X", 5 =>"O"}
  engine = 9.times.map { rand(4..5) }
  cat = []
  engine.each do |position|
    hash.each_pair { |key, value| 
      if (position == key) == true
        cat << "#{value}"
      end
    }
  end
  cat.each_slice(3).to_a
end

p gato[0]
p gato[1]
p gato[2]

50.times do |variable|
    raise "Not good" if gato == gato
end
p true

