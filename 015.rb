# Problem 15:
# Starting in the top left corner of a 2x2 grid, there are 6 routes (without 
# backtracking) to the bottom right corner. How many routes are there through a 
# 20x20 grid?

require 'lib/factorial'

grid_size = 20
central_binomial_coefficient = (2 * grid_size).factorial / grid_size.factorial ** 2

puts central_binomial_coefficient

# Answer: 137846528820
# Time: 0m0.010s
