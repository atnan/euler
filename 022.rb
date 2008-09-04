# Problem 22:
# Sort the names in 022_data.txt into alphabetical order, calculate the
# alphabetical value of each name (sum of character positions in the alphabet),
# and then calculate the total sum of all name alphabetical values multiplied by
# the names' position in the name list

total = 0
names = File.read('022_data.txt').scan((/"([^"]+)"/)).map { |a| a.first }.sort
names.each_with_index do |name,index|
  alph_value = name.unpack('U*').inject(0) { |sum,char| sum + (char-64) }
  total += alph_value * (index+1)
end

puts total

# Answer: 871198282
# Time: 0m0.095s