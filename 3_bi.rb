# Let min = 0 and max = n-1.
# Guess the average of max and min, rounded down so that it is an integer.
# If you guessed the number, stop. You found it!
# If the guess was too low, set minmin to be one larger than the guess.
# If the guess was too high, set maxmax to be one smaller than the guess.
# Go back to step two.

n = 10
array = Array.new(n) { rand(1...100) }
target = array.sample

def binary_search(target, array, n)
  p array.sort!
  p target
    min = 0
    max = n - 1 

  while min <= max

    guess = ((min+max)/2).round

    if array[guess] == target
      return array[guess]
    elsif array[guess] < target 
      min = guess + 1
    elsif array[guess] > target
      max = guess - 1
    end

  end
end


p true if binary_search(target, array, n) == target




