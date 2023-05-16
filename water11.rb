#!/usr/bin/env ruby

# Displays the absolute minimum difference between<br>
# > two elements of an array consisting only of numbers.
# > 
# > Negative numbers accepted.
# > 
# > Display error and exit the program<br>
# > in case of argument problems.

# Examples of use:

# ```
# $> ruby exo.rb 5 1 19 21
# 2
# ```
# ```
# $> ruby exo.rb 20 5 1 19 21
# 1
# ```
# ```
# $> ruby exo.rb -8 -6 4
# 2
# ```
# ```
# $> ruby drafts/water11.rb
# Error: Array must have at least two elements
# ```

def absolute_minimum_difference(*array)
  # Check if array has at least two elements
  if array.length < 2
    puts "Error: Array must have at least two elements"
    return
  end

  # Initialize minimum difference with the difference between the first two elements
  min_diff = (array[0] - array[1]).abs

  # Iterate over the array to find the minimum difference
  (0...array.length).each do |i|
    (i + 1...array.length).each do |j|
      diff = (array[i] - array[j]).abs
      min_diff = diff if diff < min_diff
    end
  end

  # Display the minimum difference
  puts min_diff
end

# Get the command-line arguments excluding the script name
args = ARGV.map(&:to_i)

# Call the function with the command-line arguments
absolute_minimum_difference(*args)
