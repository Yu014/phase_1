# Deberás crear un método que reciba un integer y devuelva un
# array con la combinación de números primos que lo componen.
# Escribe pseudocódigo antes de empezar con el código.

Definir el método prime_factors, que recibe un número entero como variable.
  Requerir el método 'prime' de ruby
  Asignar un nombre al array que contendrá los (x) primeros números primos
  Definir un array vacío
  # IF el número es divisible entre el 1er elemento del array con un residuo de 0
  #   agrega el 1er elemento del array al array vacío
  # ELSIF el número es divisible entre el 2do elemento del array con un residuo de 0
  #   agrega el 2do elemento del array al array vacío
  Itera sobre arreglo de numeros primos


# def prime_factors(num)
#   require 'prime'
#   primes = Prime.first(26)
#   arr = []
#   if num % primes[0] == 0
#     arr << primes[0]
#   end
#   p arr
# end







# Driver code

# prime_factors(4) #=> [2, 2]
prime_factors(9) #=> [3, 3]
# prime_factors(12) #=> [2, 2, 3]
# prime_factors(34) #=> [2, 17]