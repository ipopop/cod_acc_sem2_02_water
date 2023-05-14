#!/usr/bin/env ruby

# Create a program that displays the first index <br#
# of a searched element in an array.
#
# The array consists of all arguments except the last one.
#
# The searched element is the last argument. 
#
# Display -1 if the element is not found.
#
# Display error and exit the program in case of argument problems.

def find_element_index(array, element)
  for i in 0..array.length-1
      if array[i] == element
          return i
      end
  end
  return -1
end

if ARGV.length < 2
  puts "Error: Not enough arguments provided"
  exit
end

array = ARGV[0, ARGV.length - 1]
element = ARGV[ARGV.length - 1]

index = find_element_index(array, element)

puts index
