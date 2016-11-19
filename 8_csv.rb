require 'faker'

class Person
attr_accessor :first_name, :last_name, :email, :phone, :created_at
  # The fakers I'm working with:       
  # Faker::Name.first_name Faker::Name.last_name Faker::Internet.email Faker::Time.backward(14, :evening))
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
  people.each do |persona|
    p people.to_s
  end
end

people(15)

require "csv"

class PersonWriter
  def initialize(file, people)
    @file = file
    @people = people
  end
  def create_csv
    p people
    # CSV.open("people.csv", "wb") do |csv|
    # csv << ["animal", "count", "price"]
    # csv << ["fox", "1", "$90.00"]
    # end
  end

end
person_writer = PersonWriter.new("people.csv", people(n))
# person_writer.create_csv