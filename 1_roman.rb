def to_roman(num)
  uno = "I"
  cinco = "V"
  diez = "X"
  cincu = "L"
  cien = "C"
  quin = "D"
  mil = "M"

  case num
  when 1..3
    p (uno * num)
  when 4
    p (uno + cinco)
  when 5
    p cinco
  when 6..8
    p cinco + (uno * (num - 5))
  when 9
    p (uno + diez)
  when 10
    p diez
  when 11..13
    p diez + (uno * (num - 10))
  when 14
    p diez + (uno + cinco)
  when 15
    p diez + cinco
  when 16..18
    p diez + cinco + (uno * (num - 5))
  when 19
    p diez + (uno + diez)
  when 20
    p diez*2
  end


end
#Drive code
a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
# g = to_roman(944) == "CMXLIV"
# h = to_roman(1453) == "MCDLIII"
# i = to_roman(1646) == "MDCXLVI"


puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
# puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
# puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
# puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 