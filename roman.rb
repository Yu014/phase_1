def to_roman(num)
  hash = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }
  romaning = ""

  # hash.each do |keys, values|
  #   if num == keys
  #     romaning << values
  #   elsif (num+1) == key
  #     romaning << hash[1] << value
  #   end
  # end
  num.divmod(hash.keys.last) 
  romaning << hash.values.last


  # if romaning.empty? == true

  # end
  romaning
end

#Drive code
# a = to_roman(1) == "I"
# b = to_roman(3) == "III"  
# c = to_roman(4) == "IV"
# d = to_roman(9) == "IX"
# e = to_roman(13) == "XIII"
# f = to_roman(14) #== "XIV"
# g = to_roman(944) == "CMXLIV"
# h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"


# puts "|valid |input | expected | actual"
# puts "|------|------|----------|-------"
# puts "| #{a} |1     | I        | #{to_roman(1)}"
# puts "| #{b} |3     | III      | #{to_roman(3)}"
# puts "| #{c} |4     | IV       | #{to_roman(4)}"
# puts "| #{d} |9     | IX       | #{to_roman(9)}"
# puts "| #{e} |13    | XIII     | #{to_roman(13)}"
# puts "| #{f} |14    | XIV      | #{to_roman(14)}"
# puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
# puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 