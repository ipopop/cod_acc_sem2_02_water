#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'script'

class FibonacciTest < Minitest::Test
  def test_fibonacci
    # Test case 1
    input1 = ["3"]
    expected1 = "2\n"
    assert_output(expected1) { eval(input1[0]) }

    # Test case 2
    input2 = ["35"]
    expected2 = "9227465\n"
    assert_output(expected2) { eval(input2[0]) }

    # Test case 3
    input3 = ["-35"]
    expected3 = "-1\n"
    assert_output(expected3) { eval(input3[0]) }

    # Test case 4
    input4 = ["abc"]
    expected4 = "Error: incorrect input format provided\n"
    assert_output(expected4) { eval(input4[0]) }

    # Test case 5
    input5 = ["5.5"]
    expected5 = "Error: incorrect input format provided\n"
    assert_output(expected5) { eval(input5[0]) }
  end
end
