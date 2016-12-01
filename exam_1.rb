#Clases

#Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status

  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

#Cinco instancias de CreditCard
card_1 = CreditCard.new("Amex", 2345673444, "12/15", 2345, [234, 567, 456, 567, 344])
card_2 = CreditCard.new("ScotiaBank", 2345673744, "12/16", 2845, [234, 345, 456, 567, 344])
card_3 = CreditCard.new("Bancomer", 2345673444, "12/15", 2645, [234, 345, 456, 567, 344])
card_4 = CreditCard.new("Serfin", 2345473454, "12/20", 1345, [234, 345, 456, 567, 344])
card_5 = CreditCard.new("BanCoppel", 2345373464, "12/18", 2445, [567, 345, 456, 567, 344])

#Array con cinco objetos de tarjetas de crédito
cards = [card_1, card_2, card_3, card_4, card_5]

#test
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas
def show_cards(cards)
  puts "|     name      |     number     |    expiration  |      cvc      |           status          |"
  puts "----------------------------------------------------------------------------------------------"
  cards.each do |item|
    puts "|   #{item.name.ljust(12)}|   #{item.number.to_s.ljust(13)}|\t#{item.expiration.ljust(10)}|\t#{item.cvc.to_s.ljust(10)}| #{item.status} |"
  end  
end

show_cards(cards)

#Herencia

#Athlete class
class Athlete
  attr_accessor :total_distance, :total_time
  def initialize(distance=0, time=0)
    @total_distance = distance
    @total_time = time
  end
  def speed
    @speed = (@total_distance / @total_time.to_f).round(2)
    @speed.nan? == true ? 0 : @speed
  end
  def speed_record
  end
end

class Runner < Athlete
  def run
    "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end
  def new_workout(new_distance, new_time)
    @total_distance += new_distance
    @total_time += new_time
    @speed
  end
end
class Swimmer < Athlete
  def swim
    "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end
end
class Cyclist < Athlete
  def ride_bike
    "Cycled #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end
end

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

#Race cars
class RaceCar
  DISTANCE = 100.0
  attr_reader :name
  def initialize(name, time_array)
    @name = name
    @time_array = time_array
  end
  def average_speed
    speed_arr = []
    @time_array.each { |num| speed_arr << (DISTANCE/num).round(2) }
    laps = @time_array.length
    (speed_arr.inject { |sum, speed| sum + speed } / laps).round(2)
  end
  def level
    case average_speed
    when 1..9.99 then 'Principiante'
    when 10..11.99 then 'Normal'
    when 12..14.99 then 'Medio'
    when 15..100 then 'Avanzado'
    end
  end
end

#Team class
class Team
  def initialize(team)
    @team = team
    @team_members = team.length
  end
  def team
    @team
  end
  def average_speed_of_team
    team_s = []
    @team.each do |car|
      team_s << car.average_speed
    end
    average = (team_s.inject { |sum, speed| sum + speed } / @team_members).round(2)
    "The average speed of your team is #{average} m/s"
  end
end

# #método para buscar race car
def search(name, team_one)
  belong = false
  team_one.team.each do |car|
    if car.name == name
      belong = true
    end
  end
  belong == true ? "#{name} is a racer" : "#{name} does not belog to this team"
end

# #método para mostrar nombre y nivel del race car
def level_table(all)
  puts "|    Name        |    Nivel        |"
  puts "------------------------------------"
  all.each do |car|
    puts "|    #{car.name.ljust(11)} |   #{car.level.ljust(14)}|"
  end
end


# #instancias de RaceCar
car1 = RaceCar.new("Power", [15.62, 13.4, 8.95, 12.03, 10.78])
car2 = RaceCar.new("Emmett", [6.28, 5.52, 8.05, 7.80, 6.24])
car3 = RaceCar.new("Marti", [7.14, 10.8, 9.65, 12.01, 8.97])
car4 = RaceCar.new("Jenni", [20.63, 19.4, 12.77, 34.5, 13.8])
car5 = RaceCar.new("Lorraine", [8.20, 13.87, 7.03, 12.39, 11.45])
car6 = RaceCar.new("Marvin", [5.24, 8.45, 8.32, 11, 9.64])


#tests
p "car1: #{car1.average_speed} m/s"
p "car2: #{car2.average_speed} m/s"
p "car3: #{car3.average_speed} m/s"
p "car4: #{car4.average_speed} m/s"
p "car5: #{car5.average_speed} m/s"
p "car6: #{car6.average_speed} m/s"

#create a team of cars 
team1 = [car1, car2, car3]
team2 = [car4, car5, car6]
all = team1 | team2
 
team_one = Team.new(team1)
team_two = Team.new(team2)


#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

# #calculate average speed of team
p team_one.average_speed_of_team

#método para mostrar nombre y nivel del race car
level_table(all)



