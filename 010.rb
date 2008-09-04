# Problem 10:
# Calculate the sum of all the primes below one million

require "lib/prime"

sum = 0
1.upto(1_000_000) do |n|
  sum += n if n.prime?
end

puts sum

# Answer: 37550402023
# Time: 1m58.643s
