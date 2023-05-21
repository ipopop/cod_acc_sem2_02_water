#!/usr/bin/env ruby

# gem install minitest (optional)
# ruby tests/exo_test.rb

require 'minitest/autorun'
require_relative '../exo'

class ExoTest < Minitest::Test
  def test_absolute_minimum_difference
    # Test case 1
    args1 = [5, 1, 19, 21]
    expected1 = "2\n"
    assert_output(expected1) { absolute_minimum_difference(*args1) }

    # Test case 2
    args2 = [20, 5, 1, 19, 21]
    expected2 = "1\n"
    assert_output(expected2) { absolute_minimum_difference(*args2) }

    # Test case 3
    args3 = [-8, -6, 4]
    expected3 = "2\n"
    assert_output(expected3) { absolute_minimum_difference(*args3) }

    # Test case 4
    args4 = []
    expected4 = "Error: Array must have at least two elements\n"
    assert_output(expected4) { absolute_minimum_difference(*args4) }

    # Test case 5
    args5 = [1]
    expected5 = "Error: Array must have at least two elements\n"
    assert_output(expected5) { absolute_minimum_difference(*args5) }
  end
end
