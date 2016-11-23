require 'faker'

class Person
attr_accessor :first_name, :last_name, :email, :phone, :created_at
  # The fakers I'm working with:       
  # Faker::Name.first_name
  # Faker::Name.last_name
  # Faker::Internet.email
  # Faker::PhoneNumber.phone_number
  # Faker::Time.backward(14, :evening))
  def initialize(first_name = Faker::Name.first_name, last_name = Faker::Name.last_name, email = Faker::Internet.email, phone = Faker::PhoneNumber.phone_number, created_at = Faker::Time.backward(14, :evening))
  # It's important to invoque the faker gem from the arguments of the initialize method, since it´s the only way for the class to recognize them.
  @first_name = first_name
  @last_name = last_name
  @email = email
  @phone = phone
  @created_at = created_at
  end

  def to_s
    "#{@first_name}, #{@last_name}, #{@email}, #{@phone}, #{@created_at}"
  end

end

# person = Person.new
# p  person.to_s

# This method makes an array of faked personal information of people
def people(n)
  people = []
  (n).times do
    people << Person.new
  end
  people
end

# people(15)

require "csv"

# This class generates a new csv file
class PersonWriter
  def initialize(file, people)
    @file = file
    @people = people
  end
  def create_csv
    #We open the file from the arguments, we recieve the name and the "wb" is the mode of the file.
    CSV.open(@file, "wb") do |csv|
      @people.each do |person|
      #when we add the attributes of the persons into the csv file is important to separate them by their key name.
      csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end
end

person_writer = PersonWriter.new("people.csv", people(10))
writer = person_writer.create_csv

# This class reads the csv file
class PersonParser
  def initialize(file)
    @file = file
  end
  def people
    array = []
    CSV.foreach(@file) do |row|
      array << Person.new(row[0], row[1], row[2], row[3], row[4])
      # array << row
    end
    p array
  end
end
parser = PersonParser.new("people.csv")
people = parser.people


# This class modifies the array with strings and then re-writes the csv file
class ModifyingPerson
  def initialize(file, array)
    @file = file
    @array = array
  end
  def working
    puts "¿A quién desea buscar?"
    search_person = gets.chomp
    puts "¿Cuál es el nuevo correo?"
    new_mail = gets.chomp

    @array.each do |item|
      if item.first_name == search_person
        item.email = new_mail
      end
    end
    p @array
  end
  # By calling the writer method inside the changes we rewrite the entire file
  def rewrite_csv
    CSV.open(@file, "wb") do |csv|
      @array.each do |person|
      csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end
end

change = ModifyingPerson.new("people.csv", people)
change.working
change.rewrite_csv