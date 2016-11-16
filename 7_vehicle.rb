class Vehicle
  attr_reader :age
  def what_am_i?
    self.class
  end
  def number_of_wheels
    4
  end
  def color
    "color"
  end
  def age!
    "age"
  end
end

class Motorized < Vehicle
  def has_motor
    true
  end
  def tank_size
    "big"
  end
  def refuel
    "needed"
  end
  def number_of_gears
    "number"
  end
end

class Motorbike < Motorized
  def age
    "9 years"
  end
  def number_of_wheels
    2
  end
end

class Car < Motorized
  def age
    "2 years"
  end
end

class Bicycle < Motorized
  def initialize(num)
    @num = num
  end
  def has_motor
    false
  end
  def number_of_gears(num)
    num
  end
  def age
    "4 years"
  end
  def number_of_wheels
    2
  end
end

class Skateboard < Motorized
  def has_motor
    false
  end
  def age
    "6 months"
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end