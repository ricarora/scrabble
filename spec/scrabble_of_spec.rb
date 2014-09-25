require './scrabble'

describe Scrabble do

  describe "class methods" do
    it "responds to 'score'" do
      expect(Scrabble.score("An")).to eq 2
    end
  end

  describe "class methods" do
    it "returns a word with highest score" do
      expect(Scrabble.highest_score_from(["ran", "an", "ar", "na"])).to eq "ran"
    end
  end

  describe "class methods" do
    it "returns a word with highest score with fewer tiles" do
      expect(Scrabble.highest_score_from(["bree", "zee", "bee", "fdgbe", "re"])).to eq "zee"
    end
  end

  describe "class methods" do
    it "returns a word with highest score with fewer tiles" do
      expect(Scrabble.highest_score_from(["bree", "fdbge", "zee", "bee", "fdgbe", "re"])).to eq "zee"
    end
  end

  describe "class methods" do
    it "returns a word with seven letters" do
      expect(Scrabble.highest_score_from(["bree", "fdbge", "dgdgder", "zee", "bee", "fdgbe", "re"])).to eq "dgdgder"
    end
  end

  describe "class methods" do
    it "returns a word with highest score with fewer tiles" do
      expect(Scrabble.highest_score_from(["bree", "fdbgeg", "dgdgder", "rehgdts", "bee", "fdgbe", "re"])).to eq "dgdgder"
    end
  end

  describe "class methods" do
    it "returns an only word in an array" do
      expect(Scrabble.highest_score_from(["abcd", "bacd", "cdba"])).to eq "abcd"
    end
  end

  describe "#raise_error" do
    it "when empty array is passed as argument" do
      expect{ Scrabble.highest_score_from([]) }.to raise_error NoMethodError
    end
  end

end
