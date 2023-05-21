#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../new_code'

class NewCodeTest < Minitest::Test
  def test_manual_include
    assert_equal true, manual_include("hello", "lo")
    assert_equal false, manual_include("hello", "day")
    assert_equal true, manual_include("rubyprogramming", "ruby")
  end

  def test_manual_include_with_empty_or_nil_inputs
    assert_equal false, manual_include("", "lo")
    assert_equal false, manual_include("hello", "")
    assert_equal false, manual_include(nil, "lo")
    assert_equal false, manual_include("hello", nil)
  end
end
