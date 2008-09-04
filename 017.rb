# Problem 17:
#

translations = {
  0 => "",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "thousand",
}

answer = ""

1.upto(1000) do |n|  
  number_chars = n.to_s.split(//).reverse
  
  result = {}
  if (number_chars[1] == "1")
    # Teen
    result[10] = translations["#{number_chars[1].to_i}#{number_chars[0].to_i}".to_i]
  elsif (1..9).include? number_chars[0].to_i
    # Ones
    result[1] = translations[number_chars[0].to_i]
  end
  
  if (2..9).include? number_chars[1].to_i
    # Tens
    result[10] = translations["#{number_chars[1]}0".to_i]
  end
  
  if (1..9).include? number_chars[2].to_i
    # Hundreds
    result[100] = translations[number_chars[2].to_i] + translations[100]
    result[100] += "and" if (result[10] or result[1])
  end
  
  if (1..9).include? number_chars[3].to_i
    # Thousands
    result[1000] = translations[number_chars[3].to_i] + translations[1000]
    result[1000] += "and" if (result[10] or result[1])
  end
  
  translated_number = ""
  translated_number << result[1000] if result[1000]
  translated_number << result[100] if result[100]
  translated_number << result[10] if result[10]
  translated_number << result[1] if result[1]
  answer += translated_number
end

puts answer.length

# Answer: 21124
# Time: 0m0.062s
