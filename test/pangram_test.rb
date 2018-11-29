require_relative 'test_helper'
require './lib/pangram'


class PangramTest < Minitest::Test
  def setup
    @pangram = Pangram.new
  end

  def test_it_exists
    assert_instance_of Pangram, @pangram
  end

  def test_is_pangram?
    assert_equal(@pangram.pangram?("The quick brown fox jumps over the lazy dog."), true)
    assert_equal(@pangram.pangram?("This is not a pangram."), false)
  end
end
