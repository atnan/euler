# Problem 6:
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum

result = (1..100).inject([0,0]) do |result, n|
  [result[0] + n, result[1] + n**2]
end

puts result[0]**2 - result[1]

# Answer: 25164150
# Time: 0m0.005s

