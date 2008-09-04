# Problem 3:
# Find the largest prime factor of 317584931803

require "lib/prime"
 
prime_factor = 1
value = 317584931803
2.upto(value-1) do |n|
  if n.prime? and (value % n == 0)
    prime_factor = n
    value /= n
    break if value == 1
  end
end

puts prime_factor

# Answer: 3919
# Time: 0m0.034s
