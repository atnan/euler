# Problem 2:
# Find the sum of all the even-valued terms in the Fibonacci sequence which do
# not exceed one million

sum = 0
a, b = 0, 1
max = 1_000_000
while (b < max)
    sum += b if (b % 2 == 0)
    a, b = b, a + b
end

puts sum

# Answer: 1089154
# Time: 0m0.012s