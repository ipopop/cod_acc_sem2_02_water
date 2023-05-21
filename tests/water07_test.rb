#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../capitalize'

class CapitalizeTest < Minitest::Test
  def test_capitalize_words
    input = "hello mathilde, how are you?!"
    expected = "Hello Mathilde, How Are You?!"

    result = capitalize_words(input)

    assert_equal expected, result
  end
end
