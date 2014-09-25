#require_relative './scrabble'

class Player
attr_accessor :name, :plays

  def initialize(name)
    @name = name
    @plays = []
  end

  def total_score
    @plays.reduce(0) {|sum, word| sum += Scrabble.score(word) }
  end

  def play(word)
    @plays << word
  end


end
