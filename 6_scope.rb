$local_var = "this is my global var"

def return_my_local_var
  local_var
end

puts return_my_local_var
# => undefined local variable or method `local_var'
# nonetheless we are calling local_var, we are not calling our global variable

def return_my_global_var
  $local_var
end

puts return_my_global_var
# => this is my global var
# by using the "$" symbol we call the global variable

class DummyClass
$local_var = "this is my local var"

  def return_my_local_var
    local_var
  end
end

instancia = DummyClass.new
puts instancia.return_my_local_var
# => `return_my_local_var': undefined local variable
# => or method `local_var' for #<DummyClass:0x007fd74a055c70>

class DummyClass
  def initialize
    local_var = "this is my local var"
  end
  def return_my_local_var
    local_var
  end
end

instancia = DummyClass.new
puts instancia.return_my_local_var
#=> `return_my_local_var': undefined local variable
#=> or method `local_var' for #<DummyClass:0x007f9e0292bf60>
# although we are calling local_var from inside the class, it's not accessible
# for all the methods inside it 

class DummyClass
  def initialize
    @instance_var = "this is my instance var"
  end
  def return_my_local_var
    @instance_var
  end
end

instancia = DummyClass.new
puts instancia.return_my_local_var
# => this is my instance var
# by changing the local_var to an instance_var it becomes
# accessible for every methods inside the class

class DummyClass

# Este es un getter
  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

end

dummy_class = DummyClass.new
p dummy_class.instance_var=("Bar")
# => "Bar"
p dummy_class.instance_var   =    "Baz"
# => "Baz"
# getters and setters

class DummyClass
  @@class_variable = "This is a class variable"
# Este es un getter
  def class_variable
    @@class_variable
  end

# Este es un setter
  def class_variable=(value)
    @@class_variable = value
  end

end

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new
p dummy_1.class_variable
# => "This is a class variable"
p dummy_2.class_variable
# => "This is a class variable"
# los valores de ambas instancias son iguales!
dummy_1.class_variable=("New value for the class variable")

p dummy_1.class_variable
# => "New value for the class variable"
# we changed class variable through the setter method 

class DummyClass
  def initialize
    @class_variable = "This is a class variable"
  end
# Este es un getter
  def class_variable
    @class_variable
  end

# Este es un setter
  def class_variable=(value)
    @class_variable = value
  end

end

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new
p dummy_1.class_variable
# => "This is a class variable"
p dummy_2.class_variable
# => "This is a class variable"
# los valores de ambas instancias son iguales!

dummy_1.class_variable=("New value for the class variable")
p dummy_1.class_variable
# => "New value for the class variable"
p dummy_2.class_variable
# => "This is a class variable"
# we changed the instance variable through the setter method

$global_var = "This is a global variable"
CONSTANT = 3.1416 

  def global_var
    $global_var
  end
  def global_var=(value)
    $global_var = value
  end

  def CONSTANT
    @class_variable
  end
  def CONSTANT=(value)
    @class_variable = value
  end

p global_var
#=> "This is a global variable"
global_var=("This a neeew global variable")
p global_var
#=> "This a neeew global variable"
p CONSTANT
#=> 3.1416
CONSTANT=("This a neeew CONSTANT")
#=> warning: already initialized constant CONSTANT
#=> warning: previous definition of CONSTANT was here
p CONSTANT
#=> "This a neeew CONSTANT"
# tests from outside the class

class DummyClass
  def global_var
    $global_var
  end
  def global_var=(value)
    $global_var = value
  end

  def CONSTANT
    CONSTANT
  end
  # def CONSTANT=(value)
  #   CONSTANT = value
  # end

end

dummy_1 = DummyClass.new

p dummy_1.global_var
#=> "This is a global variable"
dummy_1.global_var=("This is a new value for the global variable")
p dummy_1.global_var
#=> "This is a new value for the global variable"
p dummy_1.CONSTANT
#=> 3.1416
# dummy_1.CONSTANT=("This is a new constant")
# gets a dynamic constant assignment error, which means we cannot define a setter for a constant
