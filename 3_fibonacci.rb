def fibonacci_iterative(num)
  primero=0
  siguiente=1
    (1..num).each do 
      temporal = primero
      primero = siguiente 
      siguiente = temporal + siguiente
    end
  primero  
end

module Fib
  @@memo = {}
  def self.compute(num)
    if num <= 1
      return num
    else
      @@memo[num] ||= compute(num-1) +  compute(num-2)
    end
  end
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p Fib.compute(0) == 0
p Fib.compute(1) == 1
p Fib.compute(2) == 1
p Fib.compute(3) == 2
p Fib.compute(4) == 3
p Fib.compute(5) == 5



require 'benchmark'
num = 1000
Benchmark.bm do |x|
  x.report("iterative_fib") { fibonacci_iterative(num) }
  x.report("recursive_fib") { Fib.compute(num)  }
end

