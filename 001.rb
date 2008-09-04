# Problem 1:
# Add all the natural numbers below 1000 that are multiples of 3 or 5

value = (1...1000).inject(0) do |sum,n|
    (n % 3 == 0 or n % 5 == 0) ? sum + n : sum
end

puts value

# Answer: 233168
# Time: 0m0.013s