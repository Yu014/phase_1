# Deberás crear un método que reciba un integer y devuelva un
# array con la combinación de números primos que lo componen.
# Escribe pseudocódigo antes de empezar con el código.

def prime_factors(num)
  require 'prime'
  primes = Prime.first(26)
  arr = []
  if num % primes[0] == 0
    arr << primes[0]
  end
  p arr
end







# Driver code

# prime_factors(4) #=> [2, 2]
prime_factors(9) #=> [3, 3]
# prime_factors(12) #=> [2, 2, 3]
# prime_factors(34) #=> [2, 17]