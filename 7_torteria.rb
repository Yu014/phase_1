$cheking
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

class Tortero
  def working?
    t = Time.now
    (t.hour > 9) && (t.hour < 20) ? true : false
  end 
  def cooking!
    if working? == true
      p "We are open and I'm cooking your tortas"
    else
      p "Sorry, we are closed, come tomorrow for your torta"
    end
  end
  def cheking_tortas_every(min)
    $cheking = min
  end
end

class Horno < Tortero
  attr_accessor :set, :horneando, :status
  def initialize(batch)
  @batch = batch
  end
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
  def baking
    raise NoTortasInTheOvenError, "The tray is empty" if @batch.empty?
  end
  def status
    p "Martin abrió el horno para checar las tortas a los #{$cheking} minutos"
    @waste = 0
    @good_torta = 0
    @batch.each do |torta|
      if torta.name == "milanesa"
        if $cheking < torta.time
          p "La torta de #{torta.name} está cruda"
        elsif $cheking == torta.time
          p "La torta de #{torta.name} está lista!"
          @good_torta += 1
        else $cheking > torta.time
          p "La torta de #{torta.name} está quemada"
          @waste += 1
        end
      elsif torta.name == "jamon"
        if $cheking < torta.time
          p "La torta de #{torta.name} está cruda"
        elsif $cheking == torta.time
          p "La torta de #{torta.name} está lista!"
          @good_torta += 1
        else $cheking > torta.time
          p "La torta de #{torta.name} está quemada"
          @waste += 1
        end
      elsif torta.name == "salchicha"
        if $cheking < torta.time
          p "La torta de #{torta.name} está cruda"
        elsif $cheking == torta.time
          p "La torta de #{torta.name} está lista!"
          @good_torta += 1
        else $cheking > torta.time
          p "La torta de #{torta.name} está quemada"
          @waste += 1
        end
      elsif torta.name == "huevo"
        if $cheking < torta.time
          p "La torta de #{torta.name} está cruda"
        elsif $cheking == torta.time
          p "La torta de #{torta.name} está lista!"
          @good_torta += 1
        else $cheking > torta.time
          p "La torta de #{torta.name} está quemada"
          @waste += 1
        end
      end
    end
  end
  def finished_order?
    arr = []
    @batch.each do |torta|
    arr << torta.quantity
    end
    request = arr.inject(:+)

    @good_torta == request ? true : false
  end
end

torta_m = Torta.new("milanesa", 7, 5)
torta_j = Torta.new("jamon", 5, 6)
torta_s = Torta.new("salchicha", 10, 1)
torta_h = Torta.new("huevo", 12, 3)

batch = [torta_m, torta_j, torta_s, torta_h]

martin = Tortero.new

horno = Horno.new(batch)
# horno.set=("5")
# horno.countdown
# horno.alarm

batch.each do |torta|
puts torta.best_torta
end

martin.cooking! 
# until horno.finished_order?

#   min = rand(2..15)
#   martin.cheking_tortas_every(min)
  
#   horno.baking
#   horno.status
#   horno.finished_order?

# end