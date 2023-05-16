#!/usr/bin/env ruby

# Create a program that displays the Nth element of the famous Fibonacci sequence.
# (0, 1, 1, 2) being the beginning of the sequence and the first element being at index 0.
# Display -1 if the parameter is negative or bad.

# Examples of use:
# $> ruby script.rb 3
# 2
# $>

# The Fibonacci sequence has many interesting mathematical properties
# and appears in many different fields, such as mathematics, physics, and biology.

# The algorithm used to generate the Fibonacci sequence is very simple.
# To generate the nth number in the sequence,
# you add the (n-1)th and (n-2)th numbers together.
# For example, to generate the 4th number in the sequence (which is 2),
# you add the 2nd number (1) and the 3rd number (also 1) together: 1 + 1 = 2.

# fibonacci algo
# n-2  +  n-1  =  n
# |     |     |
# v     v     v
# +---+ +---+ +---+
# | 0 | | 1 | | 1 | --> 2
# +---+ +---+ +---+

# Using memoization for better performance
@cache = {}

def fibo(n)
  return -1 if n < 0
  return n if n <= 1
  return @cache[n] if @cache[n]

  @cache[n] = fibo(n-1) + fibo(n-2)
end

# Get the command line argument and call 'fibo' function
arg = ARGV

if arg.length != 1 || !arg[0].match?(/\A-?\d+\z/)
  puts "Error: incorrect input format provided"
else
  n = arg[0].to_i
  # puts n
  puts fibo(n)
  # puts @cache
end
