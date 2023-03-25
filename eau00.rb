#!/usr/bin/env ruby

# Displays all the different possible combinations
# of three numbers in ascending order, in ascending order (the repetition is voluntary).
# Language: Ruby
# Exec Command in Shell: ruby eau00.rb


# Define an empty array to store the valid combinations
combinations = []

# Loop through all numbers from 0 to 9 for the first digit
(0..9).each do |i|
  # Loop through all numbers from i to 9 for the second digit
  (i..9).each do |j|
    # Loop through all numbers from j to 9 for the third digit
    (j..9).each do |k|
      # Check if the combination is valid: all digits must be different
      if i != j && i != k && j != k
        # Check if the combination is not already in the array
        unless combinations.include?([i, j, k])
          # Add the combination to the array
          combinations << [i, j, k]
        end
      end
    end
  end
end

# Format the combinations as a string
result = combinations.map { |c| c.join('') }.join(', ')

# Print the result
puts result
