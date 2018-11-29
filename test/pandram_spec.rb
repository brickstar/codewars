require_relative 'test_helper'
require './lib/pandram'


class PandramTest < Minitest::Test
  def setup
    @pandram = Pandram.new
  end

  def test_it_exists
    assert_instance_of Pandram, @pandram
  end
end
