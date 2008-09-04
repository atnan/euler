# Problem 12:
# Which is the first triangle number to have over five-hundred divisors?

seed = 0
triangle = 0
biggest_factor_count = 1

while (true) do
  seed += 1
  triangle += seed;

  factors = { 1 => true, triangle => true }o
  2.upto(Math.sqrt(triangle).ceil) do |n|
    if (triangle % n == 0)
      unless factors[n]
        factors[n] = true
      end
    end
  end

  factorcopy = factors.clone
  factorcopy.each_key do |factor1|
    factorcopy.each_key do |factor2|
      product = factor1 * factor2
      if (triangle % product == 0)
        unless factors[product]
          factors[product] = true
        end
      end
    end
  end

  if factors.size > biggest_factor_count
    puts "Tested #{triangle}, has #{factors.size} factors"
    biggest_factor_count = factors.size
  end

  puts factors.inspect

  break if (factors.size >= 5)
end

# Answer:
# Time:
