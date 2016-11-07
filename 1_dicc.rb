def diccionary_sort
  prompt = "> "
  puts "Escribe una palabra:"
  print prompt
  array = []
  
  while word = gets.chomp
  
    if word == ""
      num = array.length
      puts "Felicidades! Tu diccionario tiene #{num} palabras:"
      puts array.sort_by { |word| word.downcase }
      break

    elsif word.match(/[a-zA-Z]/)
      array << word
      p array
      puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
      
    else
      puts "Por favor escribe una palabra"
    end
  end
end

diccionary_sort