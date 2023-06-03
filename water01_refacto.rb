#!/usr/bin/env ruby
combinations = (0..99).to_enum(:each_cons, 2).map { |a, b| "#{a.to_s.rjust(2, '0')} #{b.to_s.rjust(2, '0')}" }
result = combinations.join(', ')
puts result
