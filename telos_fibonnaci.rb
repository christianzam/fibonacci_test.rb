# TODO: Find the last digit of a partial sum of Fibonacci Numbers: Given two non-negative integers m and n, 
# where m <= n, find the last digit of the sum Fm + Fm+1 … + Fn

def fibonacci(n,m)
  # raise an Error if number n or m is less than one
  fail ArgumentError, "# numbers must be greater than 0" if n.zero? || m.zero?

  # array takes a range of 1 to m minus the sum inject performs as it takes the first element 
  # in the range and uses that as the base 'sum'. 
  # It then takes the next element "m" and then adds them together
  array = (1..m - 2).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
  sub_array = array[n-1..m-1]
  sum_array = sub_array.sum 
  sum_array % 10
  # sum_array
end

p fibonacci(0, 8)

# p fibonacci(3,7)
# p fibonacci(10,10)
# p fibonacci(10,200)
# p fibonacci(30,70)
# p fibonacci(50,70)
