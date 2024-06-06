# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'rgb_convertion'

# TestRGB class
class TestRGB < Minitest::Test
  def test_rgb
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end
end
