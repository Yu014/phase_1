require 'csv'
#remember model interacts with the data base
class Task
  def initialize(name, status)
  end
  # def 
  # end
end

class Record
  def initialize
    @file = "list.csv"
  end

  def index
    array = []
    CSV.read(@file) do |row|
      array << row
    end
    array
  end

  def add(val)
    array = [val]
    CSV.open(@file, "a+") do |csv|
      csv << array   
    end 
  end

  def delete(val)
 
  end


  def complete(val)

  end
end
