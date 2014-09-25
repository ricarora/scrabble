class Scrabble

  LETTERS = {a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4,
    w: 4, x: 8, y: 4, z: 10}

  def initialize

  end

  def self.score(word)
    sum = 0
    word.each_char do |l|
      l = l.downcase
      sum += LETTERS[l.to_sym]
    end
    sum
  end

  def self.highest_score_from(array_of_words)
    seven_letter_word = array_of_words.select {|word| word.length ==  7 }
    if seven_letter_word == []
      max_score = Scrabble.score(array_of_words.max_by {|word| Scrabble.score(word) })
      sorted_by_score = array_of_words.select {|word| Scrabble.score(word) ==  max_score }
      sorted_by_score.min_by {|word| word.length }
    else
      seven_letter_word.max_by {|word| Scrabble.score(word) }
    end
  end

end
