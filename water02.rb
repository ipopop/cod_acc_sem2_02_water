# Display the received arguments in reverse.
#
# Display "Error" & exit the program
# in case of argument problem.


# Check if the number of arguments passed is greater than zero
if ARGV.length > 0
  # Reverse and print the arguments
  puts ARGV.reverse
else
  # Display error message and exit
  puts "Error"
  exit
end
