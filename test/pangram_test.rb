require_relative 'test_helper'
require './lib/pandram'


class PangramTest < Minitest::Test
  def setup
    @pangram = Pangram.new
  end

  def test_it_exists
    assert_instance_of Pangram, @pangram
  end

  def test_is_pandram?
    Test.assert_equals(panagram?("The quick brown fox jumps over the lazy dog."), true)

# "This is not a pangram."
    Test.assert_equals(panagram?("This is not a pangram."), false)

end
