# def do_this_block
#     # block =
#      yield
# end

# puts do_this_block { 1 + 1 }

# name = "Fernando"

# do_this_block do 
#     puts name * 3
# end

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
  p "In the method at #{Time.now}"
  yield
end

gato do
  sleep(5)
  p "In the block at #{Time.now}"
end



