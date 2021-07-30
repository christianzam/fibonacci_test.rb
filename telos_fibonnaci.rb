# TODO: Find the last digit of a partial sum of Fibonacci Numbers: Given two non-negative integers m and n, 
# where m <= n, find the last digit of the sum Fm + Fm+1 … + Fn

def fibonacci(n,m)
  # raise an Error if number n or m is less than one
  fail ArgumentError, "# numbers must be greater than 0" if n.zero? || m.zero?

  # array takes a range of 1 to m minus the sum inject performs as it takes the first element 
  # in the range and uses that as the base 'sum'.
  # It then takes the next element "m" and then adds them together
  array = (1..m - 2).inject( [0, 1] ) { | fibonnaci | fibonnaci << fibonnaci.last(2).inject(:+) }

  # once we have "array" as the representation of the fibonacci sequence we extract the sequence
  # into a sub_array where we want to find their index therefore we substract one for the index
  sub_array = array[n-1..m-1]

  # as per instructions we add the numbers in sub_array to get the sum Fm + Fm+1 … + Fn
  sum_array = sub_array.sum

  # to get the last digit we apply module to the number
  return sum_array % 10
end

# p fibonacci(3,7)
# p fibonacci(10,10)
# p fibonacci(10,200)
# p fibonacci(30,70)
# p fibonacci(50,70)
