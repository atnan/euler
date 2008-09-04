# Problem 20:
# Find the sum of the digits in the number 100!

require 'lib/factorial'

result = 100.factorial.to_s.split(//).inject(0) do |sum,char|
  sum + char.to_i
end

puts result

# Answer: 648
# Time: 0m0.014s