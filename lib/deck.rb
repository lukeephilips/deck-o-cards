require './lib/card'

class Deck
  def initialize
    @cards = build_deck
    @current_card = nil
  end
  def cards
    @cards
  end
  def current_card
    @current_card
  end

  def draw
    if @cards.any?
      @current_card = @cards.shift
      return "You drew a #{@current_card.value} of #{@current_card.suit}"
    else
      return 'There are no more cards'
    end
  end
  def shuffle
    @cards.length.times do |i|
      rand_i = rand @cards.length - i
      @cards[i] = @cards[rand_i]
      @cards[rand_i] = @cards[i]
    end
    return @cards
  end

  private
  def build_deck
    new_deck = []
    [:spades, :clubs, :hearts, :diamonds].each do |suit|
      ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'].each do |value|
        new_deck.push Card.new({suit: suit, value: value})
      end
    end
    return new_deck
  end
end
