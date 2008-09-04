# Problem 14:
# Find the longest sequence using a starting number under one million, following
# these two rules:
#
#   n = n/2 if n is even
#   n = 3n+1 if n is odd

sequences = []
longest_seq = 0
longest_seq_seed = 0

1.upto(1_000_000) do |seed|
  seq = 1
  value = seed

  while(true) do
    if (value % 2 == 0)
      value /= 2
    else
      value = 3 * value + 1
    end

    # Check if the sequences have already been found for this number
    if not value.is_a? Bignum and sequences[value]
      seq += sequences[value]
      break
    else
      seq += 1
    end

    break if value == 1
  end

  sequences[seed] = seq unless seed.is_a? Bignum

  if seq > longest_seq
    longest_seq = seq
    longest_seq_seed = seed
    puts "#{seed} has generated the longest sequence of #{longest_seq}"
  end
end

# Answer: 837799
# Time: 0m15.285s
# Notes: Unfortunately, Hash can't take a Bignum as a key value.

