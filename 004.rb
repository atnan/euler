# Problem 4:
# Find the largest palindrome made from the product of two 3-digit numbers

class Integer
  def palindrome?
    str = self.to_s
    str.to_s == str.reverse
  end
end

largest = 1
range = 999

range.downto(100) do |one|
  range.downto(100) do |two|
    next if one < two
    product = one * two
    if product.palindrome? and product > largest
      largest = product
    end
  end
end

puts largest

# Answer: 906609
# Time: 0m2.379s

