class View
  def welcome
    puts "\n"
    puts "Bienvenido a Maratón."
    puts "Te daremos una pregunta y deberás adivinar la respuesta correcta."  
    puts "Listo?  Arranca el juego!"
    puts "\n"
  end

  def asking(num, question)
    puts "#{num}. #{question}"
    puts "Intento:"
    user_input = gets.chomp
  end

  def summary(good, wrong)
    puts "Acabaste:" 
    puts "Tuviste #{good} Correctas y #{wrong} Incorrectas."
  end
end

# View.new.welcome