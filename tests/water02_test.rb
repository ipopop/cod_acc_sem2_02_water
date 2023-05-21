#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'exo'

class ReverseArgumentsTest < Minitest::Test
  def test_reverse_arguments
    # Test case 1
    input1 = []
    expected1 = "Error\n"
    assert_output(expected1) { reverse_arguments(*input1) }

    # Test case 2
    input2 = ["Am", "I", "Funny"]
    expected2 = "Funny\nI\nAm\n"
    assert_output(expected2) { reverse_arguments(*input2) }

    # Test case 3
    input3 = ["ha", "ho"]
    expected3 = "ho\nha\n"
    assert_output(expected3) { reverse_arguments(*input3) }

    # Test case 4
    input4 = ["Hello 36"]
    expected4 = "Hello 36\n"
    assert_output(expected4) { reverse_arguments(*input4) }
  end
end
