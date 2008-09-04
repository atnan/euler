# Problem 5:
# What is the smallest number divisible by each of the numbers 1 to 20?

seed = 0
while not (answer ||= nil)
  seed += 20
  next unless (seed % 20 == 0)
  next unless (seed % 19 == 0)
  next unless (seed % 18 == 0)
  next unless (seed % 17 == 0)
  next unless (seed % 16 == 0)
  next unless (seed % 15 == 0)
  next unless (seed % 14 == 0)
  next unless (seed % 13 == 0)
  next unless (seed % 12 == 0)
  next unless (seed % 11 == 0)
  answer = seed
end
puts answer
exit

# Answer: 232792560
# Time: 0m18.858s


# Alternate Solution:
# This is really really really slow (really!)

seed = 0
range = (11..20).to_a.reverse
while not (answer ||= nil)
  seed += 20
  remainder = false
  range.each do |n|
    unless (seed % n == 0)
       remainder = true
       break
    end
  end
  answer = seed unless remainder
end
