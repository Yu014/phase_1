require 'csv'
#remember model interacts with the data base
class Task
  attr_accessor :name, :status

  def initialize(name, status=false)
    @name = name
    @status = status
  end
end

class Record
  def initialize
    @file = "list.csv"
  end

  def reader
    array = []
    CSV.foreach("list.csv") do |item|
      array << item
    end
    array
  end

  def index
    zero = 0
    count = 0
    finish = reader.length
    index = []
    while count < finish
      index << reader[count][zero]
      count += 1
    end
    index
  end


  def add(val)
    new_task = [val]
    CSV.open(@file, "a+") do |csv|
      new_task.each do |item|
        csv << [item.name, item.status]
      end
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
    other = []
    new_arr.each do |duty|
     other << Task.new(duty)
    end
    CSV.open(@file, "wb") do |csv|
      other.each do |item|
        csv << [item.name, item.status]
      end
    end
  end

  def complete(val)
    num = val.to_i - 1
    action = index[num]
    array = []
    CSV.foreach(@file) do |row|
      array << Task.new(row[0], row[1])
    end
    array.each_with_index do |item, indx|
      if indx == num
        item.status = true
      end
    end
    CSV.open(@file, "wb") do |csv|
      array.each do |item|
        csv << [item.name, item.status]
      end
    end
    one = 1
    count = 0
    finish = reader.length
    truish = []
    while count < finish
      truish << reader[count][one]
      count += 1
    end
    truish
  end
end
