#!/usr/bin/env ruby

# capitalizes the first letter of each word
# in a string
# & keeps the other letters in lowercase.
#
# ex of use :
# $> ruby script.rb "the words to capitalize"
# The Words To Capitalize
#

def capitalize_words(input)
  chars = input.chars
  word_start = true
  result = []

  chars.each do |char|
    if char.match?(/[a-zA-Z]/)
      result << (word_start ? char.upcase : char.downcase)
      word_start = false
    else
      result << char
      word_start = true
    end
  end

  result.join
end

arg = ARGV

if arg.empty? || arg[0].to_s.to_i.to_s == arg[0].to_s
  puts "error"
  exit
end

input = arg[0].to_s
puts capitalize_words(input)

