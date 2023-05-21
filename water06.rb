#!/usr/bin/env ruby

def custom_ord(char)
  char.unpack("U")[0]
end

def custom_upcase(char)
  if char >= 'a' && char <= 'z'
    return (custom_ord(char) - 32).chr
  else
    return char
  end
end

def custom_downcase(char)
  if char >= 'A' && char <= 'Z'
    return (custom_ord(char) + 32).chr
  else
    return char
  end
end

def capitalize_every_other_letter(string)
  return '' unless string.is_a?(String)

  result = ''
  capitalize_next = true
  string.each_char do |char|
    if /[a-zA-Z]/.match(char)
      if capitalize_next
        result += custom_upcase(char)
      else
        result += custom_downcase(char)
      end
      capitalize_next = !capitalize_next
    else
      result += char
    end
  end

  result
end

# Main program
if ARGV.empty?
  puts 'Error: missing argument'
else
  input = ARGV[0]
  if /\A\d+\z/.match(input)
    puts 'Error: argument must be a string'
  else
    puts capitalize_every_other_letter(input)
  end
end
