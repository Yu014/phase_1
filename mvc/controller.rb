require_relative 'model.rb'
require_relative 'view.rb'

class Controller
  def initialize
  end
  def menu

  end
  def index
    all_task = @model.index
    @view.show(all_task)
    usare_data = @view.request_info
  end
  def add
    Task.new(task, false) 
    #@view.show(task)
    @model.add(task)
  end
end


input = ARGV
Controller.new(input)

