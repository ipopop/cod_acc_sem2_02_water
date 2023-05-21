#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../is_numeric'

class IsNumericTest < Minitest::Test
  def test_is_numeric_positive_integer
    input = "42"
    assert is_numeric?(input)
  end

  def test_is_numeric_negative_integer
    input = "-42"
    assert is_numeric?(input)
  end

  def test_is_numeric_positive_float
    input = "42.5"
    assert is_numeric?(input)
  end

  def test_is_numeric_negative_float
    input = "-42.5"
    assert is_numeric?(input)
  end

  def test_is_numeric_non_numeric_string
    input = "Hello 36"
    refute is_numeric?(input)
  end
end
