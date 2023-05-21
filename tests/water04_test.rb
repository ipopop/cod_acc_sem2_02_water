#!/usr/bin/env ruby

# gem install minitest (optional)
# ruby tests/next_prime_test.rb

require 'minitest/autorun'
require_relative '../next_prime'

class NextPrimeTest < Minitest::Test
  def test_is_prime?
    cache = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    
    assert is_prime?(3, cache)
    assert is_prime?(5, cache)
    refute is_prime?(4, cache)
    refute is_prime?(6, cache)
  end

  def test_next_prime
    cache = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    
    assert_equal 17, next_prime(14, cache)
    assert_equal 23, next_prime(19, cache)
  end
end
