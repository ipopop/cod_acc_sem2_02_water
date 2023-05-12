#!/usr/bin/env ruby

def is_numeric?(str)
  decimal_point_encountered = false

  str.each_char.with_index do |char, index|
    if index == 0 && char == '-'
      next
    elsif (char == '.' || char == ',') && !decimal_point_encountered
      decimal_point_encountered = true
      next
    end
    return false unless char.match?(/\d/)
  end

  true
end

arg = ARGV

if arg.length != 1
  puts "Error: Please provide exactly one argument."
  exit 1
end

input_str = arg[0].to_s
puts is_numeric?(input_str)
