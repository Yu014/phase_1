#View is in charge of displaying the info and compiling 
#the inputs from the user and send them to the controller
class View
  def success(task)
    puts "Agregaste la tarea: '#{task.capitalize!}' a tu lista."
  end
  def delete(task)
    puts "Eliminaste la tarea: '#{task.join(" ").capitalize!}' de tu lista."
  end
  def show(tasks)
    # p "Estás dentro de view"
    puts "Las tareas que hay en tu lista son:"
    tasks.each_with_index do |task, idx|
      puts "#{idx + 1}." "#{task.join(" ")}"
    end
  end 
end