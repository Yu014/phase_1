def pig_latin
  user_input = ARGV
  coding = []
 
  user_input.each { |word| 
    if (word =~ /\A[aeiou]/) == 0
      coding << (word.dup << "way")
    else
      coding << (word[1..-1] + (word.scan(/\A[^aeiou]/).join) + "ay")
    end
    }
  p coding.join(' ')
end
 
pig_latin