require 'csv'
#remember model interacts with the data base
class Task
  def initialize(name, status: false)
    @name = name
    @status = status
  end
end

class Record
  def initialize
    @file = "list.csv"
    @array = []
  end

  def index
    CSV.foreach("list.csv") do |item|
      @array << item
    end
    # p "Estás dentro de model"
    @array
  end

  def add(val)
    new_task = [val]
    CSV.open(@file, "a+") do |csv|
      csv << new_task   
    end 
  end

  def delete(val)
    new_arr = []
    num = val.to_i - 1
    index.each_with_index do |task, idx|
      if idx != num
        new_arr << task
      end 
    end
    CSV.open(@file, "wb") do |csv|
      new_arr.each do |ntask|
      csv << ntask
      end
    end
    new_arr
  end

  def complete(val)

  end
end
