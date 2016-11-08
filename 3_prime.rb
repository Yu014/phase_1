# Definir el método prime_factors, que recibe un número entero como variable.
#   Requerir el método 'prime' de ruby
#   Asignar un nombre al array que contendrá los (x) primeros números primos
#   Definir un array vacío
#   Itera sobre el arreglo de numeros primos
#     IF mi array de primos incluye el numero_de_veces que cabe el divisor
#       Manda el número de veces al array vacío
#     ELSE 
#       Divide numero_de_veces entre el 1er numero del ar de primos
#     ENDIF
# ENDDEF
    

# Bloque de código prime_factors
#   IF mi num divisible entre el primer numero del arreglo con un remanente de 0 == TRUE
#     Manda el numero del arreglo a mi array vacío

def is_prime?(num)
  require 'prime'
  primes = Prime.first(15)
  primes.include?(num) ? true : false
end

def prime_factors(num)
  require 'prime'
  primes = Prime.first(15)
  arr = []
  primes.each do | prime |
    veces, remanente = num.divmod(prime)
    if remanente == 0
      arr << prime
      # is_prime?(veces) ? (arr << veces) : ""
    end
  end
  p arr
end



# Driver code

prime_factors(4) #=> [2, 2]
prime_factors(9) #=> [3, 3]
prime_factors(12) #=> [2, 2, 3]
prime_factors(34) #=> [2, 17]