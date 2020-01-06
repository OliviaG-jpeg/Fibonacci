# fib(0) = 0
# fib(1) = 1
# fib(n) = fib(n-1) + fib(n-2)
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, etc.

def recursive_fib(n)
  return 0 if n == 0
  return 1 if n == 1
  return recursive_fib(n-1) + recursive_fib(n-2)
end

puts recursive_fib(35)

def iterative_fib(n)
  return n if n <= 1
  p = 0
  c = 1
  (n-1).times do |i|
    f = p + c
    p = c
    c = f
  end
  return c
end

puts iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end