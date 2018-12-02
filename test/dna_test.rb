require_relative 'test_helper'
require './lib/dna'

class DnaTest < Minitest::Test
  def setup
    @dna = Dna.new
  end

  def test_score
    assert_equal(@dna.dna_strand("AAAA"), "TTTT")
    assert_equal(@dna.dna_strand("ATTGC"), "TAACG")
    assert_equal(@dna.dna_strand("GTAT"), "CATA")
  end
end
