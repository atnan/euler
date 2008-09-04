# Problem 7:
# Find the 10001st prime

require "lib/prime"

seed = 0
primes = 0

while (true)
  primes += seed.prime? ? 1 : 0
  break if primes == 10001
  seed += 1
end

puts seed
  
# Answer: 104743
# Time: 0m8.944s
