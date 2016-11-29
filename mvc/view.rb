#View is in charge of displaying the info and compiling 
#the inputs from the user and send them to the controller
class View
  def success(task)
    puts "Agregaste la tarea: '#{task.capitalize!}' a tu lista."
  end
  def delete(task)
    puts "Eliminaste la tarea: '#{task.capitalize!}' de tu lista."
  end
  def show(tasks)
    puts "Las tareas que hay en tu lista son:"
    tasks.each_with_index do |task, idx|
      puts "#{idx + 1}." "#{task.capitalize!}"
    end
  end
  def completed(action, tasks, boolearr)
    new_arr = []
    boolearr.each{ |x| x == "true" ? new_arr << "[X]" : new_arr << "[ ]"}
    puts "Completaste la tarea: '#{action.capitalize!}'."
    tasks.each_with_index do |task, idx|
        puts "#{idx + 1}." "#{new_arr[idx]}" "#{task.capitalize!}"
    end
  end
end