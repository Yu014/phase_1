puts "self es igual a: #{self}"
#=> self es igual a: main
#Aquí self llama al "top-level namespace" que es por default "main".

class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"
end

#=>Esto esta corriendo cuando se define la clase
#=>En este contexto self es igual a: DummyClass
#Aquí self llama a la clase

class DummyClass
  def intance_method
      puts "Dentro de un método de instancia"
      puts "En este contexto self es igual a: #{self}"
  end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method
#=>Dentro de un método de instancia
#=>En este contexto self es igual a: #<DummyClass:0x007f8130a0c1f8>
#Aquí self llama al objeto dentro del método desde su clase

class DummyClass
  def self.class_method
        puts "Dentro de un método de clase"
      puts "En este contexto self es igual a: #{self}"
  end
end

dummy_class = DummyClass.new()
puts DummyClass.class_method
#=>Dentro de un método de clase
#=>En este contexto self es igual a: DummyClass
#Aquí self como método de clase, llama a la clase a la que pertenece