require_relative 'model.rb'
require_relative 'view.rb'

class List
  def initialize(input)
  @input = input[0..-1]
  @model = Record.new
  @view = View.new
  menu(@input)
  end
  def index
    tasks = @model.index
    @view.show(tasks)
  end
  def menu(input) 
    call = input[0]
    task = input[1..-1].join(" ")
    case call
      when "index" then index
      when "add" then add(task)
      when "delete" then delete(task)
      when "complete" then complete(task)
    end
  end
  def add(task)
    @model.add(Task.new(task))
    @view.success(task)
  end
  def delete(task)
    if (task.to_i).integer? == true
      num = task.to_i - 1
      action = @model.index[num]
      @view.delete(action)
    end
    @model.delete(task)
  end
  def complete(task)
    if (task.to_i).integer? == true
      num = task.to_i - 1
      tasks = @model.index
      action = @model.index[num]
      boolearr = @model.complete(task)
      @view.completed(action, tasks, boolearr)
    end
  end
end

input = ARGV
List.new(input)


