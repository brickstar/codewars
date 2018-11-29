require_relative 'test_helper'
require './lib/pop_shift.rb'

class PopShiftTest < Minitest::Test
  def setup
    @ps = PopShift.new
  end

  def test_it_exists
    assert_instance_of PopShift, @ps
  end

  def test_it_pops_and_shifts
    actual = "reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps"
    expected = ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"]

    assert_equal @ps.popshift(actual), expected

    actual = "turnsoutrandomtestcasesareeasierthanwritingoutbasicones"
    expected =  ["senocisabtuognitirwnahtreis","turnsoutrandomtestcasesaree", "a"]
    
    assert_equal @ps.popshift(actual), expected


    actual = "exampletesthere"
    expected = ["erehtse","example","t"]

    assert_equal @ps.popshift(actual), expected

    actual = "letstalkaboutjavascriptthebestlanguage"
    expected = ["egaugnaltsebehttpir","letstalkaboutjavasc",""]

    assert_equal @ps.popshift(actual), expected

    actual = "iwanttotraveltheworldwritingcodeoneday"
    expected = ["yadenoedocgnitirwdl","iwanttotravelthewor",""]

    assert_equal @ps.popshift(actual), expected

    actual = "letsallgoonholidaysomewhereverycold"
    expected = ["dlocyreverehwemos","letsallgoonholida","y"]

    assert_equal @ps.popshift(actual), expected
  end
end

__END__
Test.describe("Basic tests") do
Test.assert_equals(pop_shift("reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps"), ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"])
Test.assert_equals(pop_shift("turnsoutrandomtestcasesareeasierthanwritingoutbasicones"), ["senocisabtuognitirwnahtreis","turnsoutrandomtestcasesaree", "a"])
Test.assert_equals(pop_shift("exampletesthere"), ["erehtse","example","t"])
Test.assert_equals(pop_shift("letstalkaboutjavascriptthebestlanguage"), ["egaugnaltsebehttpir","letstalkaboutjavasc",""])
Test.assert_equals(pop_shift("iwanttotraveltheworldwritingcodeoneday"), ["yadenoedocgnitirwdl","iwanttotravelthewor",""])
Test.assert_equals(pop_shift("letsallgoonholidaysomewhereverycold"), ["dlocyreverehwemos","letsallgoonholida","y"])
