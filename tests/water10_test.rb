#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../new_code'

class FindElementIndexTest < Minitest::Test
  def test_find_element_index
    array = %w[This is the world that contains Charlie a nice man Charlie]
    element = "Charlie"

    assert_equal 6, find_element_index(array, element)
    assert_equal 0, find_element_index(array, "This")
    assert_equal -1, find_element_index(array, "NotInArray")
  end
end
