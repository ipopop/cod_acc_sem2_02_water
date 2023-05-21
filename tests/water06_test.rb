#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../new_code'

class CapitalizeEveryOtherLetterTest < Minitest::Test
  def test_capitalize_every_other_letter
    assert_equal "HeLlO wOrLd!", capitalize_every_other_letter("Hello world!")
    assert_equal "AbCdEfGhIj", capitalize_every_other_letter("abcdefghij")
    assert_equal "123!@#AbC", capitalize_every_other_letter("123!@#abc")
  end

  def test_capitalize_every_other_letter_with_non_string_input
    assert_equal '', capitalize_every_other_letter(42)
    assert_equal '', capitalize_every_other_letter(nil)
  end
end
