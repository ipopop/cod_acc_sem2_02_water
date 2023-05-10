def capitalize_every_other_letter(string)
  return '' unless string.is_a?(String)

  result = ''
  capitalize_next = true
  string.each_char do |char|
    if /[a-zA-Z]/.match(char)
      if capitalize_next
        result += char.upcase
      else
        result += char.downcase
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
