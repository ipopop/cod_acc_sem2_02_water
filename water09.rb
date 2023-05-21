#!/usr/bin/env ruby

## Between min and max

# Create a program that displays all values between two numbers in ascending order. Min included, max excluded.

# Display error and exit the program in case of argument problems.

# Examples of use:

# ```
# $> ruby exo.rb 20 25
# 20 21 22 23 24
# ```
# ```
# $> ruby exo.rb 25 20
# 20 21 22 23 24
# ```
# ```
# $> ruby exo.rb hello
# error
# ```


def display_values(min, max)
  (min...max).each { |n| print "#{n} " }
  puts
end

def manual_sort(a, b)
  if a < b
    [a, b]
  else
    [b, a]
  end
end

arg = ARGV

if arg.length != 2 || !arg.all? { |arg| arg.match?(/^\d+$/) }
  puts "error"
  exit 1
end

min, max = manual_sort(arg[0].to_i, arg[1].to_i)
display_values(min, max)
