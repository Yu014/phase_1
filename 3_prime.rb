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
# num = 12

def is_prime?(num)
  require 'prime'
  primes = Prime.first(50)
  primes.include?(num) ? true : false
end

def factors(num)
  require 'prime'
  primes = Prime.first(50)
  arr = []
  primes.each do | prime |
    veces, remanente = num.divmod(prime)
    if remanente == 0
      arr << prime
      is_prime?(veces) ? (arr << veces) : ""
    end
  end
  arr
end

# p factors(num)

def prime_factors(num)
  require 'prime'
  primes = Prime.first(50)
  if factors(num).inject(:*) == num
    p factors(num)
    # "El número #{factors(num)[0]} por #{factors(num)[1]} es igual a #{num}"
  else
    if factors(num).uniq.inject(:*) == num
      p factors(num).uniq
      # "El número #{factors(num)[0]} por #{factors(num)[1]} es igual a #{num}"
    else
      p new_arr = (factors(num) << primes[0]).sort
      # p "El número #{new_arr[0]} por #{new_arr[1]} por #{new_arr[2]} es igual a #{num}"
      # p new_arr.sort.inject(:*) == num
    end
  end
end

# prime_factors(num)

# Driver code
prime_factors(4) #=> [2, 2]
prime_factors(9) #=> [3, 3]
prime_factors(12) #=> [2, 2, 3]
prime_factors(34) #=> [2, 17]
