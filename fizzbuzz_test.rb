# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'fizzbuzz'

# TestFizzBuzz class
class TestFizzBuzz < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal '4', fizz_buzz(4)
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'Fizz', fizz_buzz(9)
    assert_equal 'Buzz', fizz_buzz(10)
    assert_equal 'Fizz Buzz', fizz_buzz(15)
    assert_equal 'Fizz Buzz', fizz_buzz(30)
  end
end
