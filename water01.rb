#!/usr/bin/env ruby

# display all the different combinations
# of two numbers between 00 and 99
# in ascending order.

# example :
# $> ruby exo.rb
# 00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
# $>

# Define an empty array to store the valid combinations
combinations = []

# Loop through all numbers from 0 to 98 for the first digit
(0..98).each do |i|
  # Loop through all numbers from i+1 to 99 for the second digit
  ((i+1)..99).each do |j|
    # Format the combination as a string
    combination = format("%02d %02d", i, j)
    # Add the combination to the array
    combinations << combination
  end
end

# Join the combinations into a single string with commas
result = combinations.join(", ")

# Print the result
puts result
