require 'pry'
class Dna
  def dna_strand(strand)
    strand.tr("TAGC", "ATCG")
  end
end
