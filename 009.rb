# Problem 9:
# Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000

sum = 1000
catch(:done) do
  (3..sum).each do |three|
    (2..three).each do |two|
      (1..two).each do |one|
        next unless (one + two + three == sum)
        next unless (one**2 + two**2 == three**2)
        puts "Pythagorean triplet = {#{one}, #{two}, #{three}}, product = #{one*two*three}"
        throw :done
      end
    end
  end
end

# Answer: 31875000
# Time: 0m12.684s
