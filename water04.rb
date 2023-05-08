# Create a program that displays the first prime number
# greater than the number given as an argument.
#
# Display -1 if the parameter is negative or bad.
#
# Example of use:
#
# $> ruby exo.rb 14
# 17
# 

def is_prime?(n, cache)
  return true if cache.include?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  cache << n
  true
end


# Initialize & check input format
arg = ARGV
if arg.length != 1 || !arg[0].match(/^\d+$/)
  puts "Please provide a single positive integer as an argument."
  exit
end

# Convert input to integer and initialize cache
n = arg[0].to_i
cache = [2, 3, 5, 7, 11]

# Find next prime number
result = n + 1
until is_prime?(result, cache)
  result += 1
end

# Print result
puts result
