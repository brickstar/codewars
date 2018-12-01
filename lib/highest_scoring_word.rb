require 'pry'

class HighestScoringWord
  def high(sentence)
    split_sentence = split_sentence(sentence)
    scores = score_words(split_sentence)
    get_index_of_highest_score = scores.index(scores.max_by { |num| num })
    split_sentence[get_index_of_highest_score]
  end

  private
    def split_sentence(x)
      x.split
    end

    def score_key
      @_score_key ||= alph.reduce({}) do |acc, letter|
        acc[letter] = alph.index(letter) + 1
        acc
      end
    end

    def alph
      ('a'..'z').to_a
    end

    def score_words(words)
      words.map do |word|
        score_word(word)
      end
    end

    def score_word(word)
      word.chars.map do |letter|
        score_letter(letter)
      end.sum
    end

    def score_letter(letter)
      score_key[letter]
    end
end
