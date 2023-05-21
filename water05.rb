#!/usr/bin/env ruby

# Create a program that determines
# if a string is inside another string.
#
# Examples of use:
# $> ruby exo.rb hello day
# true
#
# $> ruby exo.rb hello day
# false
#
# $> ruby exo.rb 42
# error
#
# display error and exit the program
# in case of argument problems.

# The manual algo to check if the str2 string motif is find in str1 
def manual_include(str1, str2)
  return false if str1.nil? || str2.nil? || str1.empty? || str2.empty?

  str1_chars = str1.chars
  str2_chars = str2.chars
  str2_len = str2_chars.length

  str1_chars.each_with_index do |char, index|
    if char == str2_chars[0] && (index + str2_len - 1) < str1_chars.length
      slice = str1_chars[index, str2_len]
      return true if slice == str2_chars
    end
  end

  false
end


# Check if the correct number of arguments are provided
if ARGV.count != 2
  puts "error"
  exit(1)
end

# Assign the command line arguments to variables
str1, str2 = ARGV

# Check if the first string is inside the second string
result = manual_include(str1, str2)

# Print the result
puts result
