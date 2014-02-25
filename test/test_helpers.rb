require 'minitest/autorun'
require_relative '../lib/helpers.rb'

class TestHelpers < Minitest::Test
  include Helpers

  def test_to_li
    assert_equal to_li("wag_bag"), "%li wag bag"
  end

  def test_underscores_to_whitespace
    assert_equal underscores_to_whitespace("wag_bag"), "wag bag"
  end

  def test_gen_dir_list
    assert_equal gen_dir_list(['.', '..', 'bag']), ['bag']
  end

  def test_snake_to_title
    assert_equal snake_to_title('wag_a_bag'), 'Wag a bag'
  end
end
