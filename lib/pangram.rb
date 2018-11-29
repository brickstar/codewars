require 'pry'
class Pangram
  def pangram?(str)
    ('a'..'z').all? { |word| str.delete('.').delete(' ').downcase.include? (word) }
  end
end
