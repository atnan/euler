# Problem 67:
# By starting at the top of the triangle below and moving to adjacent numbers 
# on the row below, the maximum total from top to bottom is 23.
#
#   3
#   7 5
#   2 4 6
#   8 5 9 3
#
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom in 067_data.txt, a 15K text file 
# containing a triangle with one-hundred rows.

require 'lib/triangle'

triangle = Triangle.new(File.read('067_data.txt'))
puts triangle.max_sum_of_path

# Answer: 7273
# Time: 0m0.024s
