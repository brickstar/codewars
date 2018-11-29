require_relative 'test_helper'
require './lib/sum_of_two_lowest'

class SumOfTwoLowestTest < Minitest::Test
  def setup
    @summer = SumOfTwoLowest.new
  end

  def test_it_exists
    assert_instance_of SumOfTwoLowest, @summer
  end

  def test_it_works
    assert_equal(@summer.sum_two_smallest_numbers([5, 8, 12, 18, 22]), 13)
    assert_equal(@summer.sum_two_smallest_numbers([7, 15, 12, 18, 22]), 19)
    assert_equal(@summer.sum_two_smallest_numbers([25, 42, 12, 18, 22]), 30)
  end
end
