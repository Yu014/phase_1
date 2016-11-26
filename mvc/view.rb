#View is in charge of displaying the info and compiling 
#the inputs from the user and send then to de controller
class View
  def success(task)
    p "Creaste con éxito la tarea:"
    p task.capitalize!
  end
  # def delete(task)
  #   p "Eliminaste la tarea: #{task.capitalize!} de tu lista."
  # end
  def showlist(task)
    puts "Las tareas que hay en tu lista son:"
    task.each do |x|
      puts x
    end
  end 
end