require 'deck'
require 'rspec'

describe Deck do
  before do
    @test_deck = Deck.new
  end
  describe '#init' do
    it 'creates a deck' do
      expect(@test_deck.class).to eq Deck
    end
  end
  describe '#build_deck' do
    it 'returns an array of Cards' do
      expect(@test_deck.cards.first.class).to eq Card
    end
    it 'returns an array of 52 items' do
      expect(@test_deck.cards.length).to eq 52
    end
  end
  describe '#shuffle' do
    it 'changes a random sample of three cards' do
      index = rand 51
      index1 = rand 51
      index2 = rand 51
      sample_cards = [@test_deck.cards[index], @test_deck.cards[index1], @test_deck.cards[index2]]
      @test_deck.shuffle

      expect([@test_deck.cards[index], @test_deck.cards[index1], @test_deck.cards[index2]])
      .not_to eq sample_cards
    end
    it 'returns an array of 52 items' do
      expect(@test_deck.cards.length).to eq 52
    end
  end
  describe '#draw' do
    it 'returns a card' do
      expect(@test_deck.draw.class).to eq Card
    end
    it 'returns empty when there are no more cards' do
      @test_deck.cards.clear
      expect(@test_deck.draw).to eq 'no more cards'
    end
  end
end
