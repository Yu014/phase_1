require_relative 'model.rb'
require_relative 'view.rb'

class Controller
  def initialize(input)
  @input = input[0..-1]
  @model = Record.new
  @view = View.new
  menu(@input)
  end
  def index
    all_task = @model.index
    @view.showlist(all_task)
    # usare_data = @view.request_info
  end
  def menu(input)
    call = input[0]
    task = @input[1..-1].join(" ")
    case call
      when "add" then add(task)
      when "delete" then delete(task)
    end
  end
  def add(task)
    Task.new(task, false) 
    @view.success(task)
    @model.add(task)
  end
#   def delete(task)
#     if task == @model.delete(task)
#       @model(task) = nil
#     else
#       #error
#     @view.show(task)
#     @model.add(task)
#   end
end

input = ARGV
Controller.new(input)


