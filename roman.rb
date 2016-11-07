def to_roman(num)
  hash = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 1 => "I"}
  romaning = ""
  residuo = num

    hash.each do |key, value|
      # if num == key
      #   romaning << value
      veces, residuo = residuo.divmod(key)
      p veces
      p residuo
      romaning << value * veces
    end

  p romaning
end

#Drive code
a = to_roman(1) #== "I"
b = to_roman(3) #== "III"  
c = to_roman(4) #== "IV"
d = to_roman(9) #== "IX"
e = to_roman(13) #== "XIII"
f = to_roman(14) #== "XIV"
g = to_roman(944) #== "CMXLIV"
h = to_roman(1453) #== "MCDLIII"
i = to_roman(1646) #== "MDCXLVI"


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
# puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 