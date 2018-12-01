require_relative 'test_helper'
require './lib/highest_scoring_word'

class HighestScoringWordTest < Minitest::Test
  def setup
    @hsw = HighestScoringWord.new
  end

  def test_score
    assert_equal(@hsw.high('aaa b'), 'aaa')
    assert_equal(@hsw.high('man i need a taxi up to ubud'), 'taxi')
    assert_equal(@hsw.high('what time are we climbing up the volcano'), 'volcano')
    assert_equal(@hsw.high('take me to semynak'), 'semynak')
  end
end
