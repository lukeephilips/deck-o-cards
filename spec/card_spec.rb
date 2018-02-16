require 'card'
require 'rspec'

describe Card do
  before do
    @test_card = Card.new({suit: :spades, value: 'A'})
  end
  describe '#init' do
    it 'creates a card' do
      expect(@test_card.class).to eq Card
    end
  end
  describe '#suit' do
    it 'returns a suit' do
      expect(@test_card.suit).to eq :spades
    end
  end
  describe '#value' do
    it 'returns a value' do
      expect(@test_card.value).to eq 'A'
    end
  end
end
