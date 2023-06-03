#!/usr/bin/env ruby
digits = (0..9).to_a
combinations = digits.combination(3).map(&:join).select do |combination|
  # Check if the combination has unique digits
  combination.chars.uniq.length == 3
end
result = combinations.join(", ")
puts result
