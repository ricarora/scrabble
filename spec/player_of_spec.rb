require './player'
require 'pp'

describe Player do
  before(:all) do
    @player = Player.new("kate")
  end
  describe "class_method" do
    it "responds to name" do
      expect(Player).to respond_to :name
    end
  end

  describe "name" do
    it "returns the name of the instance" do
      expect(@player.name).to eq "kate"
    end
  end

  describe "total_score" do
    it "returns total score" do
      expect(@player.total_score).to eq 0
    end
  end

  describe "plays" do
    it "returns array of the words played by a player" do
      expect(@player.plays).to eq []
    end
  end

  describe "play" do
    it "adds the words to an existing array'plays'" do
      expect(@player.play("ra")).to eq ["ra"]
      pp @player
    end
  end

  describe "plays" do
    it "returns array of the words played by a player" do
      pp @player
      expect(@player.plays).to eq ["ra"]
    end
  end

  describe "total_score" do
    it "returns total score" do
      expect(@player.total_score).to eq 2
    end
  end



end
