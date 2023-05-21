#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../new_code'

class DisplayValuesTest < Minitest::Test
  def test_display_values
    expected = "20 21 22 23 24\n"

    result = capture_stdout do
      display_values(20, 25)
    end
    
    assert_equal expected, result
  end

  def test_manual_sort
    assert_equal [20, 25], manual_sort(20, 25)
    assert_equal [20, 25], manual_sort(25, 20)
  end

  private

  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end
end
