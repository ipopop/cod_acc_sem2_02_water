#!/usr/bin/env ruby

# gem install minitest (optional)
# ruby tests/water01_test.rb

require 'minitest/autorun'
require_relative '../water01'

class Water00Test < Minitest::Test
  def test_combinations
    expected = "00 01"

    result = generate_combinations.join(", ")
    
    assert_equal expected, result
  end
end
