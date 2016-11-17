class Torta
  attr_accessor :name, :time, :quantity
  def initialize(name, time, quantity)
    @name = name
    @time = time
    @quantity = quantity
  end
  def best_torta
    "La torta de #{name} debe cocinarse #{time} minutos."
  end
end

class Horno
  def charola
    # 4 tortas
    @tort_capacity = 4
  end
  def capacity
    # 2 charolas
    @char_capacity = 2 
  end
  def horneando
  end
  def status
  end
end

class Reloj
  attr_accessor :set
  def set=(value)
    @set = value
    p "The clock was set in #{@set} minutes"
  end
  def countdown
    @countdown = @set.to_i
    while @countdown != 0
      sleep(3)
      @countdown = @countdown - 1
    end
  end
  def alarm
    if @countdown == 0
      p "Riiing!"
    else
      p "tick tick tick ..."
    end
  end
end

class Tortero

  
end

torta_1 = Torta.new("milanesa", 7, 5)
# torta_1.best_torta
# p torta_1.name
# p torta_1.time

torta_2 = Torta.new("jamon", 5, 6)
torta_3 = Torta.new("salchicha", 10, 1)
torta_4 = Torta.new("huevo", 12, 3)

tortas = [torta_1, torta_2, torta_3, torta_4]

tortas.each do |torta|
  puts torta.best_torta
end


# clock = Reloj.new
# clock.set=("5")
# clock.set
# clock.countdown
# clock.alarm