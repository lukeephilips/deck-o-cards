require 'deck'
require 'rspec'

describe Deck do
  before do
    @new_deck = Deck.new
  end
  describe '#init' do
    it "creates a deck" do
      expect(@new_deck.class).to eq Deck
    end
  end
  describe '#build_deck' do
    it "returns an array of Cards" do
      expect(@new_deck.cards.first.class).to eq Card
    end
    it "returns an array of 52 items" do
      expect(@new_deck.cards.length).to eq 52
    end
  end
  describe '#shuffle' do
    it "changes a random sample of indeces" do
      index = rand 51
      index1 = rand 51
      index2 = rand 51
      sample_card = @new_deck.cards[index]
      sample_card1 = @new_deck.cards[index1]
      sample_card2 = @new_deck.cards[index2]


      @new_deck.shuffle

      expect([@new_deck.cards[index], @new_deck.cards[index1], @new_deck.cards[index2]])
      .not_to eq [sample_card, sample_card1, sample_card2]

    end
    it "returns an array of 52 items" do
      expect(@new_deck.cards.length).to eq 52
    end
  end
  describe '#draw' do
    it "returns a card" do
      expect(@new_deck.draw.class).to eq Card
    end
    it "returns empty when there are no more cards" do
      @new_deck.cards.clear
      expect(@new_deck.draw).to eq 'no more cards'
    end
  end
end
